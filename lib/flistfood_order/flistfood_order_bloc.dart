import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flistfood_order/order_local_storage.dart';
import 'package:flistfood_order/order_model.dart';
import 'package:flistfood_order/product_model.dart';
import 'package:flistfood_order/service_point_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flistfood_order_event.dart';
part 'enum.dart';
part 'flistfood_order_state.dart';
part 'flistfood_order_bloc.freezed.dart';

class FlistfoodOrderBloc extends Bloc<FlistfoodOrderEvent, FlistfoodOrderState> {
  FlistfoodOrderBloc() : super(const FlistfoodOrderState.initial()) {
    on<_GetOrderByServicePoint>((event, emit) async {
      emit(const FlistfoodOrderState.loading(order: null));
      FFOrder? order = await getCurrentOrder(currentServicePointId: event.servicePointId);
      emit(FlistfoodOrderState.success(
        order: order,
        orderId: null,
        totalPrice: null,
        isSended: false,
        is401: false,
      ));
    });

    on<_AddProductOrDetailToORder>((event, emit) async {
      Product? product = event.product;
      FFDetail? detailProduct = event.detailProduct;
      FFCurrentServicePoint currentServicePoint = event.currentServicePoint;
      FFOrder? order;
      double? deliveryCost = event.deliveryCost;
      String ownerId = event.ownerId;
      String ownerName = event.ownerName;
      String? userId = event.userId;
      DateTime opneDate = event.opneDate;
      final double servicePrice =
          (deliveryCost ?? 0.0) + (currentServicePoint.supplementPrice ?? 0.0);
      int productId = detailProduct?.productId ?? product!.id;
      String? cookingTypeName;
      int? cookingTypeId;
      List<FFVariation> variations = [];

      //* Recupero l'ordine corrente al quale aggiungerò il prodotto
      order = await getCurrentOrder(currentServicePointId: currentServicePoint.id);

      emit(FlistfoodOrderState.loading(order: order));

      //* Se NON ho un dettaglio ne creo uno nuovo, per ogni variazione del prodotto popolo i dati e creo una nuova variazione nella lista variazioni
      if (detailProduct == null) {
        for (CookingType cookingType in product?.cookingTypes
                .where((e) => e.isSelected && product.preferredCookingTypeId != e.id) ??
            []) {
          cookingTypeName = cookingType.name ?? '';
          cookingTypeId = cookingType.id;
        }

        for (Alternative alternative in product?.alternatives ?? []) {
          for (FFFood food in alternative.foods
              .where((e) => e.isSelected == true && alternative.defaultFoodId != e.foodId)) {
            variations.add(FFVariation(
              foodId: food.foodId,
              price: food.price,
              foodName: food.name,
              alternative: true,
              variationType: 1,
            ));

            if (alternative.defaultFoodId == food.foodId && !food.isSelected) {
              variations.add(FFVariation(
                foodId: food.foodId,
                price: food.price,
                foodName: food.name,
                alternative: true,
                variationType: -1,
              ));
            }
          }
        }

        for (Ingredient ingredient in product?.ingredients ?? []) {
          if (ingredient.isMain && !ingredient.selected) {
            variations.add(FFVariation(
              foodId: ingredient.foodId,
              price: 0,
              foodName: ingredient.name,
              variationType: -1,
            ));
          } else if (!ingredient.isMain && ingredient.selected) {
            variations.add(FFVariation(
              foodId: ingredient.foodId,
              price: ingredient.price,
              foodName: ingredient.name,
              variationType: ingredient.variationType ?? 1,
            ));
          } else if (ingredient.isMain &&
              ingredient.selected &&
              (ingredient.variationType == 2 || ingredient.variationType == 3)) {
            variations.add(FFVariation(
              foodId: ingredient.foodId,
              price: ingredient.price,
              foodName: ingredient.name,
              variationType: ingredient.variationType!,
            ));
          }
        }

        for (Foodlist foodList in product?.foodlists ?? []) {
          final List<FFFoodDetail> foodListSort =
              foodList.foods?.where((e) => e.selected).toList() ?? [];
          foodListSort.sort((a, b) => a.timeSelected!.compareTo(b.timeSelected!));

          for (FFFoodDetail food in foodListSort) {
            variations.add(FFVariation(
              selectionPriority: foodListSort.indexOf(food) + 1,
              foodId: food.id ?? 0,
              price: food.isFree ? 0 : food.variationPrice ?? 0,
              variationType: 1,
              foodName: food.name,
            ));
          }
        }
      }
      //* Altrimenti se ho un dettaglio popolo le variazioni con le variazioni del mio dettaglio
      else {
        variations = detailProduct.variations;
      }

      log(jsonEncode(variations), name: 'Variations');

      //* Se ho già un ordine in corso aggiungo il prodotto
      if (order != null) {
        String? formatName = detailProduct?.format ?? product?.formatName;
        bool productExist = order.details.any((e) =>
            e.productId == productId &&
            e.isEqual(variations) &&
            e.cookingTypeId == cookingTypeId &&
            e.format == formatName);

        //* Controllo se devo aggiornare un prodotto esistente o se è un nuovo prodotto
        if (detailProduct != null && !productExist) {
          FFDetail singleProduct = order.details.firstWhere((e) =>
              e.productId == productId &&
              e.isEqual(detailProduct.variations) &&
              e.cookingTypeId == detailProduct.cookingTypeId &&
              e.format == formatName);
          singleProduct.quantity += 1;
          singleProduct.totalPrice = singleProduct.unitPrice * singleProduct.quantity;
        } else if (productExist) {
          FFDetail singleProduct = order.details.firstWhere((e) =>
              e.productId == productId &&
              e.isEqual(variations) &&
              e.cookingTypeId == detailProduct?.cookingTypeId &&
              e.format == formatName);

          singleProduct.quantity += 1;
          singleProduct.totalPrice = singleProduct.unitPrice * singleProduct.quantity;
        } else {
          order.details.add(
            FFDetail(
              formatId: product?.id,
              format: product?.name,
              productId: productId,
              productName: product?.name ?? detailProduct!.productName,
              sectionId: product?.sectionId ?? 0,
              unitPrice: product?.newPrice != 0
                  ? product?.newPrice ?? detailProduct!.unitPrice
                  : product?.price ?? 0.0,
              quantity: 1,
              totalPrice: product?.newPrice != 0
                  ? product?.newPrice ?? detailProduct!.totalPrice
                  : product?.price ?? 0.0,
              variations: variations,
              cookingTypeId: cookingTypeId,
              cookingType: cookingTypeName,
            ),
          );
        }

        //* Aggiorno il totalPrice
        double totalPrice = 0;
        order.details.map((e) => e.totalPrice).forEach((e) {
          totalPrice += e;
        });

        if (currentServicePoint.type == _MenuServiceType.delivery) {
          totalPrice += servicePrice;
        }

        int quantityVariation = 0;
        for (FFDetail q in order.details) {
          quantityVariation = quantityVariation + q.quantity;
        }

        final int totalQuantity = quantityVariation;

        order = FFOrder(
          servicePointId: currentServicePoint.id,
          details: order.details,
          totalQuantity: totalQuantity,
          source: 'A',
          userId: userId,
          ownerId: ownerId,
          ownerName: ownerName,
          totalPrice: totalPrice,
          openDate: opneDate,
        );
      }
      //* Altrimenti creo un nuvo ordine e aggiungo il prodotto
      else {
        List<FFDetail> orderProducts = [];

        orderProducts.add(
          FFDetail(
            formatId: product?.id,
            format: product?.name,
            sectionId: product?.sectionId ?? 0,
            productId: productId,
            productName: product?.name ?? detailProduct!.productName,
            unitPrice: product?.newPrice != 0.0
                ? product?.newPrice ?? detailProduct!.unitPrice
                : product?.price ?? 0.0,
            quantity: 1,
            totalPrice: product?.newPrice != 0.0
                ? product?.newPrice ?? detailProduct!.totalPrice
                : product?.price ?? 0.0,
            variations: variations,
            cookingTypeId: cookingTypeId,
            cookingType: cookingTypeName,
          ),
        );

        double totalProduct = orderProducts.first.totalPrice;
        order = FFOrder(
          servicePointId: currentServicePoint.id,
          source: 'A',
          details: orderProducts,
          totalQuantity: 1,
          userId: userId,
          ownerId: ownerId,
          ownerName: ownerName,
          totalPrice: totalProduct +=
              currentServicePoint.type == _MenuServiceType.delivery ? servicePrice : 0.0,
          openDate: opneDate,
        );
      }

      //* Salvo l'ordine ed emetto success
      await saveCurrentOrder(newOrder: order, currentServicePointId: currentServicePoint.id);
      emit(FlistfoodOrderState.success(
        order: order,
        orderId: null,
        totalPrice: null,
        isSended: false,
        is401: false,
      ));
      return;
    });

    on<_RemoveProductToOrder>((event, emit) async {
      Product? product = event.product;
      FFDetail? detailProduct = event.detailProduct;
      FFCurrentServicePoint currentServicePoint = event.currentServicePoint;
      FFOrder? order;
      List<FFOrder>? orders;
      String ownerId = event.ownerId;
      String ownerName = event.ownerName;
      String? userId = event.userId;
      DateTime opneDate = event.opneDate;
      double? deliveryCost = event.deliveryCost;

      //* Recupero l'ordine corrente al quale toglierò il prodotto o se ultimo prodotto, cancello l'ordine
      order = await getCurrentOrder(currentServicePointId: currentServicePoint.id);
      emit(FlistfoodOrderState.loading(order: order));

      if (order != null) {
        int? id = detailProduct?.productId ?? product?.id;
        List<FFVariation> variation = detailProduct?.variations ?? [];

        //* Seleziono un prodotto
        FFDetail selected = order.details.firstWhere((e) =>
            e.productId == id &&
            e.isEqual(variation) &&
            e.cookingTypeId == detailProduct?.cookingTypeId &&
            e.format == detailProduct?.format);

        //* Controlla la quantità per vedere se rimuoverlo dalla lista
        if (selected.quantity >= 1) {
          selected.quantity -= 1;
          selected.totalPrice = selected.unitPrice * selected.quantity;
        }
        if (selected.quantity == 0) {
          order.details.removeWhere((e) =>
              e.productId == selected.productId &&
              e.isEqual(variation) &&
              e.cookingTypeId == detailProduct?.cookingTypeId &&
              e.format == detailProduct?.format);
        }

        //* Aggiorno il totale
        double totalPrice = 0;
        order.details.map((e) => e.totalPrice).forEach((e) {
          totalPrice += e;
        });

        if (currentServicePoint.type == _MenuServiceType.delivery) {
          totalPrice += deliveryCost ?? 0.0;
          totalPrice += currentServicePoint.supplementPrice ?? 0.0;
        }

        int quantityVariation = 0;
        for (FFDetail q in order.details) {
          quantityVariation = quantityVariation + q.quantity;
        }

        final int totalQuantity = quantityVariation;

        order = FFOrder(
          servicePointId: currentServicePoint.id,
          source: 'A',
          details: order.details,
          totalQuantity: totalQuantity,
          userId: userId,
          ownerId: ownerId,
          ownerName: ownerName,
          totalPrice: totalPrice,
          openDate: opneDate,
        );

        //* Salvo l'ordine
        await saveCurrentOrder(newOrder: order, currentServicePointId: currentServicePoint.id);

        //* Recupero tutti gli ordini, se il dettaglio è vuoto e quindi non ci sono prodotti, elimino l'ordine in corso
        orders = await getAllOrders();
        if (order.details.isEmpty) {
          orders?.removeWhere((e) => e.servicePointId == currentServicePoint.id);
          await saveAllOrders(orders: orders ?? []);
        }
      }
      emit(FlistfoodOrderState.success(
        order: order,
        orderId: null,
        totalPrice: null,
        isSended: false,
        is401: false,
      ));
      return;
    });

    on<_SendOrder>((event, emit) async {
      String? orderId = event.orderId;
      String currentServicePoint = event.currentServicePoint;
      String? seatNumber = event.seatNumber;
      int? hour = event.hour;
      int? minute = event.minute;
      String note = event.note;
      FFDeliveryInfo? deliveryInfo = event.deliveryInfo;
      String? token = event.token;
      bool isAnonymous = event.isAnonymous;
      String apiBaseUrl = event.apiBaseUrl;
      String language = event.language;
      FFOrderID? orderResponse;
      DateTime currentTime = DateTime.now();

      FFOrder? order = await getCurrentOrder(currentServicePointId: currentServicePoint);
      emit(FlistfoodOrderState.loading(order: order));

      if (order == null) {
        FlistfoodOrderState.success(
          orderId: null,
          totalPrice: order?.totalPrice,
          order: order,
          isSended: true,
          is401: false,
        );
        return;
      }

      try {
        //* Popolo i campi mancanti dell'ordine
        order.note = note;
        order.seatNumber = seatNumber;
        order.id = orderId;
        order.ownerName = null;
        order.deliveryInfo = deliveryInfo;
        DateTime? mustBeReadyOn;

        if (hour != null && minute != null) {
          mustBeReadyOn =
              DateTime(currentTime.year, currentTime.month, currentTime.day, hour, minute)
                  .toLocal()
                  .toUtc();
        }
        order.mustBeReadyOn = mustBeReadyOn;
        log(jsonEncode(order), name: 'Body ordine');

        //* Faccio la chiamata alle api, dove se sono loggato chiamo le api per l'utente loggato, altrimenti quella per l'anonimo
        final Response response = await _sendOrderApi(
          apiBaseUrl: apiBaseUrl,
          isAnonimus: isAnonymous,
          order: order,
          token: token,
          language: language,
        );
        orderResponse = FFOrderID.fromJson(response.data);
      } catch (e) {
        _logError(e.toString(), name: 'Invio ordine errore');
        if (e.toString().contains('401')) {
          emit(FlistfoodOrderState.success(
            orderId: null,
            totalPrice: order.totalPrice,
            order: order,
            isSended: true,
            is401: true,
          ));
          return;
        }
        emit(FlistfoodOrderState.success(
          orderId: null,
          totalPrice: order.totalPrice,
          order: order,
          isSended: true,
          is401: false,
        ));
        return;
      }
      _log('${apiBaseUrl}v4/orders/anonymous?confirm= 200 OK', name: 'Create order anonymous');

      //* Eliminazione Ordine corrente dopo invio
      deleteCurrentOrder(currentServicePointId: currentServicePoint);
      _logInfo('Eliminazione ordine inviato', name: 'After order');

      emit(FlistfoodOrderState.success(
        orderId: orderResponse,
        totalPrice: order.totalPrice ?? 0.0,
        isSended: true,
        order: null,
        is401: false,
      ));
      return;
    });

    on<_DeleteOrderByServicePoint>((event, emit) async {
      emit(const FlistfoodOrderState.loading(order: null));

      deleteCurrentOrder(currentServicePointId: event.servicePointId);

      emit(const FlistfoodOrderState.success(
        order: null,
        orderId: null,
        totalPrice: null,
        isSended: false,
        is401: false,
      ));
    });

    on<_RemoveAllOrder>((event, emit) async {
      await deleteAllOrders();
    });
  }

  void getOrderByServicePoint({required String servicePointId}) =>
      add(_GetOrderByServicePoint(servicePointId: servicePointId));

  void addProductOrDetailToORder({
    required FFCurrentServicePoint currentServicePoint,
    Product? product,
    FFDetail? detailProduct,
    required String ownerId,
    required String ownerName,
    required String? userId,
    required DateTime opneDate,
    required double? deliveryCost,
  }) =>
      add(
        _AddProductOrDetailToORder(
          currentServicePoint: currentServicePoint,
          product: product,
          detailProduct: detailProduct,
          ownerId: ownerId,
          ownerName: ownerName,
          userId: userId,
          opneDate: opneDate,
          deliveryCost: deliveryCost,
        ),
      );

  void removeProductToOrder({
    required FFCurrentServicePoint currentServicePoint,
    Product? product,
    FFDetail? detailProduct,
    required String ownerId,
    required String ownerName,
    required String? userId,
    required DateTime opneDate,
    required double? deliveryCost,
  }) =>
      add(
        _RemoveProductToOrder(
          currentServicePoint: currentServicePoint,
          product: product,
          detailProduct: detailProduct,
          ownerId: ownerId,
          ownerName: ownerName,
          userId: userId,
          opneDate: opneDate,
          deliveryCost: deliveryCost,
        ),
      );

  void sendOrder({
    required String? orderId,
    required String currentServicePoint,
    required String? seatNumber,
    required int? hour,
    required int? minute,
    required String note,
    required FFDeliveryInfo? deliveryInfo,
    required String? token,
    required bool isAnonymous,
    required String apiBaseUrl,
    required String language,
  }) =>
      add(
        _SendOrder(
          orderId: orderId,
          currentServicePoint: currentServicePoint,
          seatNumber: seatNumber,
          hour: hour,
          minute: minute,
          note: note,
          deliveryInfo: deliveryInfo,
          token: token,
          isAnonymous: isAnonymous,
          apiBaseUrl: apiBaseUrl,
          language: language,
        ),
      );

  void deleteOrderByServicePoint({required String servicePointId}) =>
      add(_DeleteOrderByServicePoint(servicePointId: servicePointId));

  void removeAllOrder() => add(const _RemoveAllOrder());

  void _log(String message, {String? name}) {
    log('\x1B[32m$message\x1B[0m', name: name ?? 'Ordine');
  }

  void _logInfo(String message, {String? name}) {
    log('\x1B[34m$message\x1B[0m', name: name ?? 'Ordine');
  }

  void _logError(String message, {String? name}) {
    log('\x1B[31m$message\x1B[0m', name: name ?? 'Ordine');
  }

  Future<Response> _sendOrderApi({
    required String apiBaseUrl,
    required bool isAnonimus,
    required FFOrder order,
    String? token,
    required String language,
  }) {
    if (!isAnonimus) {
      return Dio().post(
        '${apiBaseUrl}v4/orders',
        data: (jsonEncode(order)),
        queryParameters: {'confirm': true},
        options: token != null
            ? Options(
                headers: {
                  'Authorization': token,
                  'Accept-Language': language,
                },
              )
            : Options(
                headers: {
                  'Accept-Language': language,
                },
              ),
      );
    } else {
      return Dio().post(
        '${apiBaseUrl}v4/orders/anonymous',
        data: (jsonEncode(order)),
        queryParameters: {'confirm': true},
      );
    }
  }
}
