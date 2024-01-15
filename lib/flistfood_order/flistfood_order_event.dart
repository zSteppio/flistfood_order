part of 'flistfood_order_bloc.dart';

sealed class FlistfoodOrderEvent extends Equatable {
  const FlistfoodOrderEvent();

  @override
  List<Object?> get props => [];
}

class GetOrderByServicePoint extends FlistfoodOrderEvent {
  final String servicePointId;
  const GetOrderByServicePoint({required this.servicePointId});

  @override
  List<Object?> get props => [servicePointId];
}

class AddProductOrDetailToORder extends FlistfoodOrderEvent {
  final String currentServicePoint;
  final String? productJson;
  final String? detailProductJson;
  final String? formatProductJson;
  final String ownerId;
  final String ownerName;
  final String? userId;
  final DateTime opneDate;
  final double? deliveryCost;
  final double? deliveryServicePrice;
  final bool isDelivery;
  const AddProductOrDetailToORder({
    required this.currentServicePoint,
    this.productJson,
    this.detailProductJson,
    this.formatProductJson,
    required this.ownerId,
    required this.ownerName,
    required this.userId,
    required this.opneDate,
    required this.deliveryCost,
    required this.deliveryServicePrice,
    required this.isDelivery,
  });

  @override
  List<Object?> get props => [
        currentServicePoint,
        productJson,
        detailProductJson,
        formatProductJson,
        ownerId,
        ownerName,
        userId,
        opneDate,
        deliveryCost,
        deliveryServicePrice,
        isDelivery,
      ];
}

class RemoveProductToOrder extends FlistfoodOrderEvent {
  final String currentServicePoint;
  final String? productJson;
  final String? detailProductJson;
  final String ownerId;
  final String? userId;
  final String ownerName;
  final DateTime opneDate;
  final double? deliveryCost;
  final double? deliveryServicePrice;
  final bool isDelivery;
  const RemoveProductToOrder({
    required this.currentServicePoint,
    this.productJson,
    this.detailProductJson,
    required this.ownerId,
    required this.userId,
    required this.ownerName,
    required this.opneDate,
    required this.deliveryCost,
    required this.deliveryServicePrice,
    required this.isDelivery,
  });

  @override
  List<Object?> get props => [
        currentServicePoint,
        productJson,
        detailProductJson,
        ownerId,
        ownerName,
        userId,
        opneDate,
        deliveryCost,
        deliveryServicePrice,
        isDelivery,
      ];
}

class DeleteOrderByServicePointId extends FlistfoodOrderEvent {
  final String servicePointId;
  const DeleteOrderByServicePointId({required this.servicePointId});

  @override
  List<Object?> get props => [servicePointId];
}

class SendOrder extends FlistfoodOrderEvent {
  final String? orderId;
  final String currentServicePoint;
  final String? seatNumber;
  final int? hour;
  final int? minute;
  final String note;
  final FFDeliveryInfo? deliveryInfo;
  final String? token;
  final bool isAnonymous;
  final String apiBaseUrl;
  final String language;
  const SendOrder({
    required this.orderId,
    required this.currentServicePoint,
    required this.seatNumber,
    required this.hour,
    required this.minute,
    required this.note,
    required this.deliveryInfo,
    required this.token,
    required this.isAnonymous,
    required this.apiBaseUrl,
    required this.language,
  });

  @override
  List<Object?> get props => [
        orderId,
        currentServicePoint,
        seatNumber,
        hour,
        minute,
        note,
        deliveryInfo,
        token,
        isAnonymous,
        apiBaseUrl,
        language,
      ];
}

class RemoveAllOrder extends FlistfoodOrderEvent {
  const RemoveAllOrder();

  @override
  List<Object?> get props => [];
}
