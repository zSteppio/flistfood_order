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

class FlistFoodVariation extends ChangeNotifier {
  late FFProduct _product;
  List<FFFoodDetail> foodListHistory = [];

  FFProduct get product => _product;

  //*---------------------------------------------------------------------------
  //* Variazioni
  //*---------------------------------------------------------------------------

  //?---------------------------------------------------------------------------
  //? Configurazione iniziale
  //?---------------------------------------------------------------------------
  void setProduct({required String productJson}) {
    _product = FFProduct.fromJson(jsonDecode(productJson));
  }

  void setProductFoodList({required String foodListJson}) {
    List<FFFoodlist> foodLists = [];

    Iterable foodListMap = jsonDecode(foodListJson);

    List<FFFoodlist> rawFoodList =
        List<FFFoodlist>.from(foodListMap.map((e) => FFFoodlist.fromJson(e)));

    for (FFFoodListsDefinition foodListDefinition in _product.foodListsDefinition ?? []) {
      // Collegamento tra il prodotto e la food list
      if (rawFoodList.any((e) => e.id == foodListDefinition.foodListId)) {
        var findedFoodList = rawFoodList.firstWhere((e) => e.id == foodListDefinition.foodListId);
        foodLists.add(findedFoodList);
      }
    }

    _product.foodlists = foodLists;

    for (FFFoodlist foodList in _product.foodlists ?? []) {
      if (_product.foodListsDefinition != null &&
          _product.foodListsDefinition!.any((e) => e.foodListId == foodList.id)) {
        var mode =
            _product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).mode;

        if (mode == FoodListModeEnum.maxFreeAndOtherWithCost ||
            mode == FoodListModeEnum.maxIngredientFree) {
          foodList.foods?.forEach((e) => e.hiddenPrice = true);
        }
        if (mode == FoodListModeEnum.maxIngredientWithCost) {
          foodList.foods?.forEach((e) => e.hiddenPrice = false);
        }
        for (FFFoodDetail food in foodList.foods ?? []) {
          food.selected = false;
        }
      }
    }
  }

  void getProductVariation({String? formatJson}) {
    FFFormat? format;

    if (formatJson != null) {
      format = FFFormat.fromJson(jsonDecode(formatJson));
    }

    List<FFIngredient> selectedIngridients = [];

    // Settaggio del prezzo nel caso ci siano formati
    if (format != null) {
      _product.newPrice = format.price;
    } else {
      _product.newPrice = _product.price;
    }

    // Recupero delle alternative di default
    for (FFAlternative alternative in _product.alternatives ?? []) {
      for (FFFood food in alternative.foods ?? []) {
        food.isSelected = false;
        if (food.foodId == alternative.defaultFoodId) {
          food.isSelected = true;
        }
      }
    }

    // Recupero del tipo di cotture di default
    for (FFCookingType cookingType in _product.cookingTypes ?? []) {
      cookingType.isSelected = false;
    }
    if (_product.cookingTypes != null &&
        _product.cookingTypes!.any((e) => e.id == _product.preferredCookingTypeId)) {
      _product.cookingTypes?.firstWhere((e) => e.id == _product.preferredCookingTypeId).isSelected =
          true;
    }

    // Recupero degli ingredienti di default
    for (FFIngredient ingredient in _product.ingredients ?? []) {
      if (ingredient.isMainIngredient) {
        ingredient.selected = true;
      } else {
        ingredient.selected = false;
      }
      selectedIngridients.add(ingredient);
    }

    notifyListeners();
  }

  //?---------------------------------------------------------------------------
  //? Settaggi delle singole variazioni
  //?---------------------------------------------------------------------------

  // Settaggio delle alternative
  void setAlternative({
    required int foodId,
    required FFAlternative alternative,
  }) {
    var selectedFood = alternative.foods?.firstWhere((e) => e.isSelected == true);
    selectedFood?.isSelected = false;

    var food = alternative.foods?.firstWhere((e) => e.foodId == foodId);
    food?.isSelected = true;

    _product.newPrice -= selectedFood?.price ?? 0.0;

    _product.newPrice += food?.price ?? 0.0;

    notifyListeners();
  }

  // Settaggio tipi di cottura
  void selectCookingType({required int cookingTypeId}) {
    _product.cookingTypes?.firstWhere((e) => e.isSelected == true).isSelected = false;
    _product.cookingTypes?.firstWhere((e) => e.id == cookingTypeId).isSelected = true;
    notifyListeners();
  }

  //* Settaggio ingredienti
  void setIngredient({required FFIngredient ingredient, required bool selected}) {
    if (ingredient.canRemove) {
      FFIngredient selectedIngridient =
          _product.ingredients!.firstWhere((e) => e.foodId == ingredient.foodId);

      selectedIngridient.selected = selected;

      if (ingredient.isMainIngredient == false) {
        if (selectedIngridient.selected == true) {
          _product.newPrice += selectedIngridient.variationPrice;
        } else if (selectedIngridient.selected == false) {
          _product.newPrice -= selectedIngridient.variationPrice;
        }
      }

      notifyListeners();
    }
  }

  void setFoodList({required int foodId, required FFFoodlist foodList, required bool selected}) {
    FFFoodListsDefinition foodListsDefinitionSelected =
        _product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id);

    var mode = foodListsDefinitionSelected.mode;
    var quantity = foodListsDefinitionSelected.maxQty;

    List<FFFoodDetail> selectedIngredients = [];

    switch (mode) {
      //* Massimi ingredienti con costo ----------------------------------------
      case FoodListModeEnum.maxIngredientWithCost:
        for (var food in foodList.foods!.where((e) => e.selected)) {
          selectedIngredients.add(food);
        }

        if (quantity > selectedIngredients.length ||
            foodList.foods?.firstWhere((e) => e.id == foodId).selected == true) {
          FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
          selectedfood.selected = selected;

          if (selectedfood.selected) {
            _product.newPrice += selectedfood.variationPrice ?? 0;
          } else if (selectedfood.selected == false) {
            _product.newPrice -= selectedfood.variationPrice ?? 0;
          }
        }
        notifyListeners();
        break;

      //* Massimi ingredienti gratuiti -----------------------------------------
      case FoodListModeEnum.maxIngredientFree:
        for (var food in foodList.foods!.where((e) => e.selected)) {
          selectedIngredients.add(food);
        }

        if (quantity > selectedIngredients.length ||
            foodList.foods?.firstWhere((e) => e.id == foodId).selected == true) {
          FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
          selectedfood.selected = selected;

          foodList.foods?.forEach((e) => e.isFree = false);
          foodList.foods?.where((e) => e.selected).forEach((e) => e.isFree = true);
        }
        notifyListeners();
        break;

      //* Massimi ingredienti gratuiti e i successivi con costo ----------------
      case FoodListModeEnum.maxFreeAndOtherWithCost:
        FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
        selectedfood.selected = selected;

        for (FFFoodDetail food in foodList.foods!.where((e) => e.selected)) {
          selectedIngredients.add(food);
        }

        // Selezionati maggiori della quantità
        if (selectedIngredients.length > quantity) {
          foodList.foods
              ?.where((e) => e.id != selectedfood.id && e.selected != true)
              .forEach((e) => e.hiddenPrice = false);

          if (selectedfood.selected) {
            _product.newPrice += selectedfood.variationPrice ?? 0;
          } else if (selectedfood.selected == false) {
            _product.newPrice -= selectedfood.variationPrice ?? 0;
          }
          if (selectedfood.selected) {
            foodListHistory.add(selectedfood);
          } else {
            foodListHistory.removeWhere((e) => e.id == selectedfood.id);
          }
        }

        // Selezionati minori della quantità
        else if (selectedIngredients.length < quantity) {
          foodList.foods?.forEach((e) => e.hiddenPrice = true);

          foodList.foods?.forEach((e) => e.isFree = false);
          foodList.foods?.where((e) => e.selected).forEach((e) => e.isFree = true);
        }

        // Selezionati uguali della quantità
        else if (selectedIngredients.length == quantity) {
          for (FFFoodDetail foodDetail in foodList.foods ?? []) {
            foodDetail.isFree = false;
            if (foodDetail.selected) {
              foodDetail.isFree;
              foodDetail.hiddenPrice = true;
            } else {
              foodDetail.hiddenPrice = false;
            }
          }
          if (selectedfood.selected == false) {
            _product.newPrice -= foodListHistory.first.variationPrice ?? 0;
          }
          foodListHistory = [];
        }
        if (foodList.foods?.any((e) => e.selected) == false) {
          foodList.foods?.forEach((e) => e.hiddenPrice = true);
        }
        notifyListeners();
        break;

      //* Illimitati e gratuiti ------------------------------------------------
      case FoodListModeEnum.freeChoise:
        FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
        selectedfood.selected = selected;

        if (selectedfood.selected == true) {
          _product.newPrice += selectedfood.variationPrice ?? 0;
        } else if (selectedfood.selected == false) {
          _product.newPrice -= selectedfood.variationPrice ?? 0;
        }
        notifyListeners();
        break;
      default:
        break;
    }

    notifyListeners();
    return;
  }
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
  }) async {
    FFProduct? product;
    FFDetail? detailProduct;
    FFFormat? formatProduct;

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
    var productId = detailProduct?.productId ?? product!.id;
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
          listEquals(e.variations, variations) &&
          e.cookingTypeId == cookingTypeId &&
          e.format == formatName);

      if (detailProduct != null && !productExist) {
        FFDetail singleProduct = _order!.details.firstWhere((e) =>
            e.productId == productId &&
            listEquals(e.variations, detailProduct?.variations) &&
            e.cookingTypeId == detailProduct?.cookingTypeId &&
            e.format == formatName);
        singleProduct.quantity += 1;
        singleProduct.totalPrice = singleProduct.unitPrice * singleProduct.quantity;
      } else if (productExist) {
        FFDetail singleProduct = _order!.details.firstWhere((e) =>
            e.productId == productId &&
            listEquals(e.variations, variations) &&
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

      if (deliveryCost != null) {
        totalPrice += deliveryCost;
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
      {
        orderProducts.add(FFDetail(
          format: formatProduct?.format,
          sectionId: product?.sectionId ?? 0,
          productId: productId,
          productName: product?.name ?? detailProduct!.productName,
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

      if (deliveryCost != null) {
        orderProducts.first.totalPrice += deliveryCost;
      }

      _order = FFOrder(
        servicePointId: currentServicePoint,
        source: 'A',
        details: orderProducts,
        userId: userId,
        ownerId: ownerId,
        ownerName: ownerName,
        totalPrice: orderProducts.first.totalPrice,
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
          listEquals(e.variations, variation) &&
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
            listEquals(e.variations, variation) &&
            e.cookingTypeId == detailProduct?.cookingTypeId &&
            e.format == detailProduct?.format);
      }

      //*
      double totalPrice = 0;
      _order!.details.map((e) => e.totalPrice).forEach((e) {
        totalPrice += e;
      });

      if (deliveryCost != null) {
        totalPrice += deliveryCost;
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

  Future<FFOrder?> sendOrder({
    required String? orderId,
    required String currentServicePoint,
    required String phoneNumber,
    required String? seatNumber,
    required int? hour,
    required int? minute,
    required String note,
    required int paymentMethod,
    required String userName,
    required String? token,
    required double? deliveryCost,
    required String? deliveryAddress,
    required double? deliveryLatitude,
    required double? deliveryLongitude,
    required bool isAnonymous,
    required String apiBaseUrl,
    required bool isDelivery,
    required String zoneID,
  }) async {
    FFOrder? order = await getCurrentOrder(currentServicePoint: currentServicePoint);

    if (order == null) {
      return null;
    }

    DateTime currentTime = DateTime.now();

    //TODO enum PaymentMethodsEnum { null, cash, pos, inApp }
    final bool confirmed = paymentMethod == 3 ? false : true;
    FFOrder? orderResponse;

    try {
      order.note = note;
      order.seatNumber = seatNumber;
      order.id = orderId;

      order.paymentType = paymentMethod;
      order.ownerName = null;
      FFDeliveryInfo? deliveryInfo = isDelivery
          ? FFDeliveryInfo(
              paymentType: paymentMethod,
              phoneNumber: phoneNumber,
              customerName: userName,
              supplementPrice: deliveryCost,
              deliveryAddress: deliveryAddress,
              deliveryLatitude: deliveryLatitude,
              deliveryLongitude: deliveryLongitude,
              zoneId: zoneID,
            )
          : null;

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
        final Response response = await Dio().post('${apiBaseUrl}v4/orders',
            data: (jsonEncode(order)),
            queryParameters: {'confirm': confirmed},
            options: token != null
                ? Options(headers: {
                    'Authorization': token,
                  })
                : null);

        orderResponse = FFOrder.fromJson(response.data);

        _log('${apiBaseUrl}v4/orders?confirm=$confirmed 200 OK', name: 'Create order');

        notifyListeners();
      } else {
        log(jsonEncode(order), name: 'Body ordine');
        final Response response = await Dio().post('${apiBaseUrl}v4/orders/anonymous',
            data: (jsonEncode(order)), queryParameters: {'confirm': confirmed});

        orderResponse = FFOrder.fromJson(response.data);

        _log('${apiBaseUrl}v4/orders/anonymous?confirm=$confirmed 200 OK',
            name: 'Create order anonymous');

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

    if (paymentMethod != 3) {
      _logInfo('Eliminazione ordine inviato', name: 'After order');
      deleteOrderByServicePointId(currentServicePoint);

      notifyListeners();
    }
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
