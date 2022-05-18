part of 'flistfood_order.dart';

class FFOrder {
  FFOrder({
    this.id,
    this.number = 0,
    this.source,
    this.totalPrice,
    required this.servicePointId,
    this.servicePointName,
    required this.serviceType,
    this.ticketId,
    this.mustBeReadyOn,
    this.exitValue,
    required this.details,
    required this.userId,
    this.user,
    required this.ownerId,
    this.ownerName,
    this.deliveryInfo,
    this.paymentStatus = 0,
    this.seatNumber,
    this.note,
  });

  String? id;
  int number;
  String? source;
  double? totalPrice;
  String servicePointId;
  String? servicePointName;
  int serviceType;
  String? ticketId;
  DateTime? mustBeReadyOn;
  int? exitValue;
  List<FFDetail> details;
  String userId;
  String? user;
  String ownerId;
  String? ownerName;
  FFDeliveryInfo? deliveryInfo;
  int paymentStatus;
  String? seatNumber;
  String? note;
}

class FFDeliveryInfo {
  FFDeliveryInfo();
}

class FFDetail {
  FFDetail({
    this.id,
    required this.productId,
    this.productName,
    this.productShortName,
    this.sectionName,
    this.sectionId = 0,
    this.quantity = 0,
    this.exitValue,
    this.unitPrice = 0,
    this.discount = 0,
    this.totalPrice = 0,
    this.cookingTypeId,
    this.cookingType,
    this.format,
    this.variations = const [],
    this.state = 0,
    this.menuId,
    this.menuName,
  });

  String? id;
  int productId;
  String? productName;
  String? productShortName;
  String? sectionName;
  int sectionId;
  int quantity;
  int? exitValue;
  double unitPrice;
  double discount;
  double totalPrice;
  int? cookingTypeId;
  String? cookingType;
  String? format;
  List<FFVariation> variations;
  int state;
  String? menuId;
  String? menuName;
}

// ignore: must_be_immutable
class FFVariation extends Equatable {
  FFVariation({
    required this.foodId,
    this.foodName,
    required this.price,
    this.alternative,
    this.variationType,
  });

  int foodId;
  String? foodName;
  double price;
  bool? alternative;
  int? variationType;

  @override
  List<Object?> get props => [foodId, variationType];
}
