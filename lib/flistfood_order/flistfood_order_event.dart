part of 'flistfood_order_bloc.dart';

@freezed
class FlistfoodOrderEvent with _$FlistfoodOrderEvent {
  const factory FlistfoodOrderEvent.getOrderByServicePoint({required String servicePointId}) =
      _GetOrderByServicePoint;

  const factory FlistfoodOrderEvent.deleteOrderByServicePoint({required String servicePointId}) =
      _DeleteOrderByServicePoint;

  const factory FlistfoodOrderEvent.addProductOrDetailToORder({
    required String currentServicePointJson,
    String? productJson,
    FFDetail? detailProduct,
    // String? formatProductJson,
    required String ownerId,
    required String ownerName,
    required String? userId,
    required DateTime opneDate,
    required double? deliveryCost,
  }) = _AddProductOrDetailToORder;

  const factory FlistfoodOrderEvent.removeProductToOrder({
    required String currentServicePointJson,
    String? productJson,
    FFDetail? detailProduct,
    required String ownerId,
    required String? userId,
    required String ownerName,
    required DateTime opneDate,
    required double? deliveryCost,
  }) = _RemoveProductToOrder;

  const factory FlistfoodOrderEvent.sendOrder({
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
  }) = _SendOrder;

  const factory FlistfoodOrderEvent.removeAllOrder() = _RemoveAllOrder;
}
