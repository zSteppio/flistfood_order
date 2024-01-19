import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flistfood_order/order_local_storage.dart';
import 'package:flistfood_order/order_model.dart';
import 'package:flistfood_order/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'flistfood_order_event.dart';

part 'flistfood_order_state.dart';

part 'flistfood_order_bloc.freezed.dart';

class FlistfoodOrderBloc extends Bloc<FlistfoodOrderEvent, FlistfoodOrderState> {
  FlistfoodOrderBloc() : super(const FlistfoodOrderState.initial()) {
    on<_GetOrderByServicePoint>((event, emit) async {
      emit(const FlistfoodOrderState.loading(order: null));
      FFOrder? order = await getCurrentOrder(currentServicePoint: event.servicePointId);
      emit(FlistfoodOrderState.success(
        order: order,
        orderId: null,
        totalPrice: null,
        isSended: false,
        is401: false,
      ));
    });

    on<_AddProductOrDetailToORder>((event, emit) async {
      FFProduct? product;
      FFOrder? order;
      FFDetail? detailProduct;
      FFFormat? formatProduct;
      double? deliveryCost = event.deliveryCost;
      double? deliveryServicePrice = event.deliveryServicePrice;
      String? productJson = event.productJson;
      String? detailProductJson = event.detailProductJson;
      String? formatProductJson = event.formatProductJson;
      String ownerId = event.ownerId;
      String ownerName = event.ownerName;
      String? userId = event.userId;
      DateTime opneDate = event.opneDate;
      String currentServicePoint = event.currentServicePoint;
      bool isDelivery = event.isDelivery;

      order = await getCurrentOrder(currentServicePoint: currentServicePoint);
      emit(FlistfoodOrderState.loading(order: order));

      final double servicePrice = (deliveryCost ?? 0.0) + (deliveryServicePrice ?? 0.0);

      if (productJson != null) {
        product = FFProduct.fromJson(jsonDecode(productJson));
      }
      if (detailProductJson != null) {
        detailProduct = FFDetail.fromJson(jsonDecode(detailProductJson));
      }
      if (formatProductJson != null) {
        formatProduct = FFFormat.fromJson(jsonDecode(formatProductJson));
      }

      int productId = detailProduct?.productId ?? product!.id;
      String? cookingTypeName;
      int? cookingTypeId;

      List<FFVariation> variations = [];

      if (detailProduct == null) {
        //* Recupero del cookingName selezionato
        for (FFCookingType cookingType in product?.cookingTypes
                .where((e) => e.isSelected && product?.preferredCookingTypeId != e.id) ??
            []) {
          cookingTypeName = cookingType.name ?? '';
          cookingTypeId = cookingType.id;
        }

        //* Recupero e settaggio delle alternative
        for (FFAlternative alternative in product?.alternatives ?? []) {
          for (var food in alternative.foods
              .where((e) => e.isSelected == true && alternative.defaultFoodId != e.foodId)) {
            variations.add(FFVariation(
              foodId: food.foodId,
              price: food.price,
              foodName: food.foodName,
              alternative: true,
              variationType: 1,
            ));

            if (alternative.defaultFoodId == food.foodId && !food.isSelected) {
              variations.add(FFVariation(
                foodId: food.foodId,
                price: food.price,
                foodName: food.foodName,
                alternative: true,
                variationType: -1,
              ));
            }
          }
        }

        //* Recupero e settaggio degli ingredienti
        for (FFIngredient ingredient in product?.ingredients ?? []) {
          if (ingredient.isMainIngredient && !ingredient.selected) {
            variations.add(FFVariation(
              foodId: ingredient.foodId,
              price: 0,
              foodName: ingredient.food,
              variationType: -1,
            ));
          } else if (!ingredient.isMainIngredient && ingredient.selected) {
            variations.add(FFVariation(
              foodId: ingredient.foodId,
              price: ingredient.variationPrice,
              foodName: ingredient.food,
              variationType: 1,
            ));
          }
        }

        //* Recupero e settaggio foodlist
        for (FFFoodlist foodList in product?.foodlists ?? []) {
          for (FFFoodDetail food in foodList.foods?.where((e) => e.selected) ?? []) {
            variations.add(FFVariation(
              foodId: food.id ?? 0,
              price: food.isFree ? 0 : food.variationPrice ?? 0,
              variationType: 1,
              foodName: food.name,
            ));
          }
        }
      } else {
        variations = detailProduct.variations;
      }

      if (order != null) {
        var formatName = detailProduct?.format ?? formatProduct?.format;

        bool productExist = order.details.any((e) =>
            e.productId == productId &&
            e.isEqual(variations) &&
            e.cookingTypeId == cookingTypeId &&
            e.format == formatName);

        if (detailProduct != null && !productExist) {
          FFDetail singleProduct = order.details.firstWhere((e) =>
              e.productId == productId &&
              e.isEqual(detailProduct?.variations ?? []) &&
              e.cookingTypeId == detailProduct?.cookingTypeId &&
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
          order.details.add(FFDetail(
            format: formatProduct?.format,
            productId: productId,
            productName: product?.name ?? detailProduct!.productName,
            sectionId: product?.sectionId ?? 0,
            unitPrice: product?.newPrice != 0
                ? product?.newPrice ?? detailProduct!.unitPrice
                : formatProduct?.price ?? product!.price,
            quantity: 1,
            totalPrice: product?.newPrice != 0
                ? product?.newPrice ?? detailProduct!.totalPrice
                : formatProduct?.price ?? product!.price,
            variations: variations,
            cookingTypeId: cookingTypeId,
            cookingType: cookingTypeName,
          ));
        }

        double totalPrice = 0;
        order.details.map((e) => e.totalPrice).forEach((e) {
          totalPrice += e;
        });

        if (isDelivery) {
          totalPrice += servicePrice;
        }

        int quantityVariation = 0;
        for (FFDetail q in order.details) {
          quantityVariation = quantityVariation + q.quantity;
        }

        final int totalQuantity = quantityVariation;

        order = FFOrder(
          servicePointId: currentServicePoint,
          details: order.details,
          totalQuantity: totalQuantity,
          source: 'A',
          userId: userId,
          ownerId: ownerId,
          ownerName: ownerName,
          totalPrice: totalPrice,
          openDate: opneDate,
        );
      } else {
        List<FFDetail> orderProducts = [];

        orderProducts.add(FFDetail(
          format: formatProduct?.format,
          sectionId: product?.sectionId ?? 0,
          productId: productId,
          productName: product?.name ?? detailProduct!.productName,
          unitPrice: product?.newPrice != 0.0
              ? product?.newPrice ?? detailProduct!.unitPrice
              : formatProduct?.price ?? product!.price,
          quantity: 1,
          totalPrice: product?.newPrice != 0.0
              ? product?.newPrice ?? detailProduct!.totalPrice
              : formatProduct?.price ?? product!.price,
          variations: variations,
          cookingTypeId: cookingTypeId,
          cookingType: cookingTypeName,
        ));

        double totalProduct = orderProducts.first.totalPrice;

        order = FFOrder(
          servicePointId: currentServicePoint,
          source: 'A',
          details: orderProducts,
          totalQuantity: 1,
          userId: userId,
          ownerId: ownerId,
          ownerName: ownerName,
          totalPrice: totalProduct += isDelivery ? servicePrice : 0.0,
          openDate: opneDate,
        );
      }

      await saveCurrentOrder(newOrder: order, currentServicePoint: currentServicePoint);

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
      FFProduct? product;
      FFOrder? order;
      List<FFOrder>? orders;
      FFDetail? detailProduct;
      String? productJson = event.productJson;
      String? detailProductJson = event.detailProductJson;
      String ownerId = event.ownerId;
      String ownerName = event.ownerName;
      String? userId = event.userId;
      DateTime opneDate = event.opneDate;
      String currentServicePoint = event.currentServicePoint;
      double? deliveryCost = event.deliveryCost;
      double? deliveryServicePrice = event.deliveryServicePrice;
      bool isDelivery = event.isDelivery;
      order = await getCurrentOrder(currentServicePoint: currentServicePoint);

      emit(FlistfoodOrderState.loading(order: order));

      if (productJson != null) {
        product = FFProduct.fromJson(jsonDecode(productJson));
      }
      if (detailProductJson != null) {
        detailProduct = FFDetail.fromJson(jsonDecode(detailProductJson));
      }

      if (order != null) {
        //* Imposto un id per i prodotti o dettaglio
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

        //*
        double totalPrice = 0;
        order.details.map((e) => e.totalPrice).forEach((e) {
          totalPrice += e;
        });

        if (isDelivery) {
          totalPrice += deliveryCost ?? 0.0;
          totalPrice += deliveryServicePrice ?? 0.0;
        }

        int quantityVariation = 0;
        for (FFDetail q in order.details) {
          quantityVariation = quantityVariation + q.quantity;
        }

        final int totalQuantity = quantityVariation;

        order = FFOrder(
          servicePointId: currentServicePoint,
          source: 'A',
          details: order.details,
          totalQuantity: totalQuantity,
          userId: userId,
          ownerId: ownerId,
          ownerName: ownerName,
          totalPrice: totalPrice,
          openDate: opneDate,
        );

        await saveCurrentOrder(newOrder: order, currentServicePoint: currentServicePoint);

        orders = await getAllOrders();
        if (order.details.isEmpty) {
          orders?.removeWhere((e) => e.servicePointId == currentServicePoint);
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

      FFOrder? order = await getCurrentOrder(currentServicePoint: currentServicePoint);
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

      DateTime currentTime = DateTime.now();

      try {
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

        if (!isAnonymous) {
          log(jsonEncode(order), name: 'Body ordine');
          final Response response = await Dio().post(
            '${apiBaseUrl}v4/orders',
            data: (jsonEncode(order)),
            queryParameters: {'confirm': true},
            options: token != null
                ? Options(headers: {
                    'Authorization': token,
                    'Accept-Language': language,
                  })
                : Options(headers: {
                    'Accept-Language': language,
                  }),
          );

          orderResponse = FFOrderID.fromJson(response.data);

          _log('${apiBaseUrl}v4/orders?confirm= 200 OK', name: 'Create order');
        } else {
          log(jsonEncode(order), name: 'Body ordine');
          final Response response = await Dio().post('${apiBaseUrl}v4/orders/anonymous',
              data: (jsonEncode(order)), queryParameters: {'confirm': true});

          orderResponse = FFOrderID.fromJson(response.data);

          _log('${apiBaseUrl}v4/orders/anonymous?confirm= 200 OK', name: 'Create order anonymous');
        }
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
        _logError((jsonEncode(order)), name: 'Body ordine');
        emit(FlistfoodOrderState.success(
          orderId: null,
          totalPrice: order.totalPrice,
          order: order,
          isSended: true,
          is401: false,
        ));
        return;
      }

      _logInfo('Eliminazione ordine inviato', name: 'After order');

      //* Eliminazione Ordine
      deleteCurrentOrder(currentServicePointId: currentServicePoint);

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
    required String currentServicePoint,
    String? productJson,
    String? detailProductJson,
    String? formatProductJson,
    required String ownerId,
    required String ownerName,
    required String? userId,
    required DateTime opneDate,
    required double? deliveryCost,
    required double? deliveryServicePrice,
    required bool isDelivery,
  }) =>
      add(_AddProductOrDetailToORder(
        currentServicePoint: currentServicePoint,
        productJson: productJson,
        detailProductJson: detailProductJson,
        formatProductJson: formatProductJson,
        ownerId: ownerId,
        ownerName: ownerName,
        userId: userId,
        opneDate: opneDate,
        deliveryCost: deliveryCost,
        deliveryServicePrice: deliveryServicePrice,
        isDelivery: isDelivery,
      ));

  void removeProductToOrder({
    required String currentServicePoint,
    String? productJson,
    String? detailProductJson,
    required String ownerId,
    required String ownerName,
    required String? userId,
    required DateTime opneDate,
    required double? deliveryCost,
    required double? deliveryServicePrice,
    required bool isDelivery,
  }) =>
      add(
        _RemoveProductToOrder(
          currentServicePoint: currentServicePoint,
          productJson: productJson,
          detailProductJson: detailProductJson,
          ownerId: ownerId,
          ownerName: ownerName,
          userId: userId,
          opneDate: opneDate,
          deliveryCost: deliveryCost,
          deliveryServicePrice: deliveryServicePrice,
          isDelivery: isDelivery,
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
}
