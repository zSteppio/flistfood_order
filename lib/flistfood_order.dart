library flistfood_order;

import 'dart:convert';
import 'dart:developer';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'order_model.dart';
part 'product_model.dart';
part 'flistfood_order.g.dart';
part 'order_local_storage.dart';

class FoodListModeEnum {
  static const freeChoise = 0;
  static const maxIngredientWithCost = 1;
  static const maxIngredientFree = 2;
  static const maxFreeAndOtherWithCost = 3;
}

//*---------------------------------------------------------------------------
//* Ordine
//*---------------------------------------------------------------------------

class FlistFoodOrder extends ChangeNotifier {
  List<FFOrder>? _orders = [];
  FFOrder? _order;
  int _totalQuantity = 0;
  bool _apiError = false;
  bool _unauthenticated = false;

  List<FFOrder>? get orders => _orders;
  FFOrder? get order => _order;
  int get totalQuantity => _totalQuantity;
  bool get apiError => _apiError;
  bool get unauthenticated => _unauthenticated;

  //?---------------------------------------------------------------------------
  //? Aggiunta all'ordine
  //?---------------------------------------------------------------------------

  void addProductOrDetailToOrder({
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
  }) async {
    FFProduct? product;
    FFDetail? detailProduct;
    FFFormat? formatProduct;
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

    _order = await getCurrentOrder(currentServicePoint: currentServicePoint);

    int productId = detailProduct?.productId ?? product!.id;
    String? cookingTypeName;
    int? cookingTypeId;

    List<FFVariation> variations = [];

    if (detailProduct == null) {
      //* Recupero del cookingName selezionato
      for (FFCookingType cookingType in product?.cookingTypes
              ?.where((e) => e.isSelected && product?.preferredCookingTypeId != e.id) ??
          []) {
        cookingTypeName = cookingType.name ?? '';
        cookingTypeId = cookingType.id;
      }

      //* Recupero e settaggio delle alternative
      for (FFAlternative alternative in product?.alternatives ?? []) {
        for (var food in alternative.foods!
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

    if (_order != null) {
      var formatName = detailProduct?.format ?? formatProduct?.format;

      bool productExist = _order!.details.any((e) =>
          e.productId == productId &&
          e.isEqual(variations) &&
          e.cookingTypeId == cookingTypeId &&
          e.format == formatName);

      if (detailProduct != null && !productExist) {
        FFDetail singleProduct = _order!.details.firstWhere((e) =>
            e.productId == productId &&
            e.isEqual(detailProduct?.variations ?? []) &&
            e.cookingTypeId == detailProduct?.cookingTypeId &&
            e.format == formatName);
        singleProduct.quantity += 1;
        singleProduct.totalPrice = singleProduct.unitPrice * singleProduct.quantity;
      } else if (productExist) {
        FFDetail singleProduct = _order!.details.firstWhere((e) =>
            e.productId == productId &&
            e.isEqual(variations) &&
            e.cookingTypeId == detailProduct?.cookingTypeId &&
            e.format == formatName);

        singleProduct.quantity += 1;
        singleProduct.totalPrice = singleProduct.unitPrice * singleProduct.quantity;
      } else {
        _order!.details.add(FFDetail(
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
      _order!.details.map((e) => e.totalPrice).forEach((e) {
        totalPrice += e;
      });

      if (isDelivery) {
        totalPrice += servicePrice;
      }

      _order = FFOrder(
        servicePointId: currentServicePoint,
        details: _order!.details,
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

      _order = FFOrder(
        servicePointId: currentServicePoint,
        source: 'A',
        details: orderProducts,
        userId: userId,
        ownerId: ownerId,
        ownerName: ownerName,
        totalPrice: totalProduct += isDelivery ? servicePrice : 0.0,
        openDate: opneDate,
      );
    }

    _totalQuantityCalc(order: _order!);

    await saveCurrentOrder(newOrder: _order!, currentServicePoint: currentServicePoint);
    //emit(OrderSuccessState(order: order, totalQuantity: totalQuantity));
    notifyListeners();
    return;
  }

  void _totalQuantityCalc({required FFOrder order}) {
    int rawQuantity = 0;
    for (var detail in order.details) {
      rawQuantity += detail.quantity;
    }

    _totalQuantity = rawQuantity;
    notifyListeners();
  }

  void removeProductToOrder({
    required String currentServicePoint,
    String? productJson,
    String? detailProductJson,
    required String ownerId,
    required String? userId,
    required String ownerName,
    required DateTime opneDate,
    required double? deliveryCost,
    required double? deliveryServicePrice,
    required bool isDelivery,
  }) async {
    FFProduct? product;
    FFDetail? detailProduct;

    if (productJson != null) {
      product = FFProduct.fromJson(jsonDecode(productJson));
    }
    if (detailProductJson != null) {
      detailProduct = FFDetail.fromJson(jsonDecode(detailProductJson));
    }
    _order = await getCurrentOrder(currentServicePoint: currentServicePoint);
    if (_order != null) {
      //* Imposto un id per i prodotti o dettaglio
      var id = detailProduct?.productId ?? product?.id;
      var variation = detailProduct?.variations ?? [];

      //* Seleziono un prodotto
      FFDetail selected = _order!.details.firstWhere((e) =>
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
        _order!.details.removeWhere((e) =>
            e.productId == selected.productId &&
            e.isEqual(variation) &&
            e.cookingTypeId == detailProduct?.cookingTypeId &&
            e.format == detailProduct?.format);
      }

      //*
      double totalPrice = 0;
      _order!.details.map((e) => e.totalPrice).forEach((e) {
        totalPrice += e;
      });

      if (isDelivery) {
        totalPrice += deliveryCost ?? 0.0;
        totalPrice += deliveryServicePrice ?? 0.0;
      }

      _totalQuantityCalc(order: _order!);

      _order = FFOrder(
        servicePointId: currentServicePoint,
        source: 'A',
        details: _order!.details,
        userId: userId,
        ownerId: ownerId,
        ownerName: ownerName,
        totalPrice: totalPrice,
        openDate: opneDate,
      );

      await saveCurrentOrder(newOrder: _order!, currentServicePoint: currentServicePoint);

      _orders = await getAllOrders();
      if (_order!.details.isEmpty) {
        _orders?.removeWhere((e) => e.servicePointId == currentServicePoint);
        await saveAllOrders(orders: _orders ?? []);
        notifyListeners();
      }
    }
    notifyListeners();
    return;
  }

  void deleteOrderByServicePointId(String servicePointId) async {
    var orders = await getAllOrders();

    orders?.removeWhere((e) => e.servicePointId == servicePointId);
    await saveAllOrders(orders: orders ?? []);
    _orders = orders;

    notifyListeners();
  }

  void removeOrders() async {
    await deleteAllOrders();
    _orders = [];
    notifyListeners();
  }

  void getOrderByCurrentServicePoint({required String currentServicePoint}) async {
    _order = await getCurrentOrder(currentServicePoint: currentServicePoint);
    if (_order != null && currentServicePoint != '') {
      _totalQuantityCalc(order: _order!);
    }
    notifyListeners();
  }

  void getAllOrdersFromStorage() async {
    _orders = await getAllOrders();
    notifyListeners();
  }

  Future<FFOrderID?> sendOrder({
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
  }) async {
    FFOrder? order = await getCurrentOrder(currentServicePoint: currentServicePoint);

    if (order == null) {
      return null;
    }

    DateTime currentTime = DateTime.now();

    FFOrderID? orderResponse;

    try {
      order.note = note;
      order.seatNumber = seatNumber;
      order.id = orderId;

      order.ownerName = null;

      order.deliveryInfo = deliveryInfo;
      DateTime? mustBeReadyOn;

      if (hour != null && minute != null) {
        mustBeReadyOn = DateTime(currentTime.year, currentTime.month, currentTime.day, hour, minute)
            .toLocal()
            .toUtc();
      }
      log(mustBeReadyOn.toString(), name: 'Must be ready on');

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

        notifyListeners();
      } else {
        log(jsonEncode(order), name: 'Body ordine');
        final Response response = await Dio().post('${apiBaseUrl}v4/orders/anonymous',
            data: (jsonEncode(order)), queryParameters: {'confirm': true});

        orderResponse = FFOrderID.fromJson(response.data);

        _log('${apiBaseUrl}v4/orders/anonymous?confirm= 200 OK', name: 'Create order anonymous');

        notifyListeners();
      }
    } catch (e) {
      _apiError = true;
      _logError(e.toString(), name: 'Invio ordine errore');
      if (e.toString().contains('401')) {
        _unauthenticated = true;
        _apiError = true;
        notifyListeners();
        return null;
      }
      _logError((jsonEncode(order)), name: 'Body ordine');

      notifyListeners();
      return null;
    }

    _logInfo('Eliminazione ordine inviato', name: 'After order');
    deleteOrderByServicePointId(currentServicePoint);

    notifyListeners();

    return orderResponse;
  }

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
