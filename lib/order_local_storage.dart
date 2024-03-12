//*-----------------------------------------------------------------------------
//* SALVATAGGIO, CANCELLAZIONE E RECUPERO DEGLI ORDINI IN CORSO
//*-----------------------------------------------------------------------------

import 'dart:convert';
import 'package:flistfood_order/order_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> deleteAllOrders() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.remove('orders');
}

Future<void> checkAllOrders() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  String? orderRaw = prefs.getString('orders');

  if (orderRaw != null) {
    var orderMap = jsonDecode(orderRaw);
    var orders = List<FFOrder>.from(orderMap.map((e) => FFOrder.fromJson(e))).toList();

    orders.removeWhere((e) => DateTime.parse(e.expDate!).isBefore(DateTime.now()));

    await prefs.setString('orders', jsonEncode(orders));
  }
}

Future<List<FFOrder>?> getAllOrders() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  var orderRaw = prefs.getString('orders');

  //* Controllo se ho già degli ordini in corso
  if (orderRaw != null) {
    var orderMap = jsonDecode(orderRaw);
    var orders = List<FFOrder>.from(orderMap.map((e) => FFOrder.fromJson(e))).toList();

    return orders;
  }
  //* Se non ci sono ordini in corso
  return null;
}

Future<FFOrder?> getCurrentOrder({required String currentServicePointId}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  var orderRaw = prefs.getString('orders');

  //* Controllo se ho già degli ordini in corso
  if (orderRaw != null) {
    var orderMap = jsonDecode(orderRaw);
    var orders = List<FFOrder>.from(orderMap.map((e) => FFOrder.fromJson(e))).toList();

    //* Controllo se sono presenti ordini su quel servicePoint
    if (orders.any((e) => e.servicePointId == currentServicePointId)) {
      FFOrder order = orders.firstWhere((e) => e.servicePointId == currentServicePointId);
      return order;
    }

    //* Se ci sono ordini in corso ma non sul quel servicePoint
    return null;
  }
  //* Se non ci sono ordini in corso
  return null;
}

Future<void> deleteCurrentOrder({required String currentServicePointId}) async {
  List<FFOrder> orders = await getAllOrders() ?? [];
  if (orders.any((e) => e.servicePointId == currentServicePointId)) {
    orders.removeWhere((e) => e.servicePointId == currentServicePointId);
    await saveAllOrders(orders: orders);
    return;
  }
}

Future<void> saveCurrentOrder({
  required FFOrder newOrder,
  required String currentServicePointId,
}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  List<FFOrder> orders = await getAllOrders() ?? [];

  newOrder.expDate = DateTime.now().add(const Duration(days: 5)).toString();

  //* Controllo se ci sono ordini in corso
  if (orders.isNotEmpty) {
    //* Controllo se sono presenti ordini su quel servicePoint
    if (orders.any((e) => e.servicePointId == currentServicePointId)) {
      //* Se c'è lo rimuovo e aggiungo quello nuovo
      FFOrder order = orders.firstWhere((e) => e.servicePointId == currentServicePointId);
      orders.remove(order);
      orders.add(newOrder);
      await prefs.setString('orders', jsonEncode(orders));
    } else {
      //* Altrimenti lo aggiungo alla lista e risalvo
      orders.add(newOrder);
      await prefs.setString('orders', jsonEncode(orders));
    }
  } else {
    //* Altrimenti lo salvo e basto
    orders.add(newOrder);
    await prefs.setString('orders', jsonEncode(orders));
  }
}

Future<void> saveAllOrders({required List<FFOrder> orders}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('orders', jsonEncode(orders));
}
