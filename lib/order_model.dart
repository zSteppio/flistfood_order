part of 'flistfood_order.dart';

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFOrder {
  String? id;
  String? source;
  String servicePointId;
  String? ticketId;
  DateTime? mustBeReadyOn;
  int? exitValue;
  List<FFDetail> details;
  String? userId;
  String ownerId;
  FFDeliveryInfo? deliveryInfo;
  int paymentType;
  String? seatNumber;
  String? note;
  //* Dati vecchi
  double? totalPrice;
  int serviceType;
  DateTime? openDate;
  String? ownerName;
  String? expDate;
  int paymentStatus;

  FFOrder({
    this.id,
    this.source,
    required this.servicePointId,
    this.ticketId,
    this.mustBeReadyOn,
    this.exitValue,
    required this.details,
    this.userId,
    required this.ownerId,
    this.deliveryInfo,
    this.paymentType = 1,
    this.seatNumber,
    this.note,
    this.totalPrice,
    this.serviceType = 0,
    required this.openDate,
    this.ownerName,
    this.expDate,
    this.paymentStatus = 0,
  });

  factory FFOrder.fromJson(Map<String, dynamic> json) => _$FFOrderFromJson(json);
  Map<String, dynamic> toJson() => _$FFOrderToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
@CopyWith()
class FFDetail {
  int productId;
  int sectionId;
  int quantity;
  int? exitValue;
  double unitPrice;
  int? discount;
  int? cookingTypeId;
  String? format;
  List<FFVariation> variations;
  String? menuId;
  //* dati vecchi
  String? productName;
  double totalPrice;
  String? cookingType;

  FFDetail({
    required this.productId,
    this.sectionId = 0,
    this.quantity = 0,
    this.exitValue,
    this.unitPrice = 0,
    this.discount = 0,
    this.cookingTypeId,
    this.format,
    this.variations = const [],
    this.menuId,
    this.productName,
    this.totalPrice = 0,
    this.cookingType,
  });

  factory FFDetail.fromJson(Map<String, dynamic> json) => _$FFDetailFromJson(json);
  Map<String, dynamic> toJson() => _$FFDetailToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
@CopyWith()
class FFVariation {
  int foodId;
  bool? alternative;
  int? variationType;
  //* dati vecchi
  String? foodName;
  double price;

  FFVariation({
    required this.foodId,
    this.alternative,
    this.variationType,
    this.foodName,
    required this.price,
  });

  factory FFVariation.fromJson(Map<String, dynamic> json) => _$FFVariationFromJson(json);
  Map<String, dynamic> toJson() => _$FFVariationToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
@CopyWith()
class FFDeliveryInfo {
  String? referenceCode;
  String? phoneNumber;
  String? customerName;
  String? deliveryAddress;
  double? deliveryLatitude;
  double? deliveryLongitude;
  String? deliveryIntercom;
  int? deliveringTime;
  String? notes;
  String? deliveryTime;
  bool? canChangeServicePoint;
  String zoneId;
  //* dati vecchi
  double? supplementPrice;
  int paymentType;

  FFDeliveryInfo({
    this.referenceCode,
    this.phoneNumber,
    this.customerName,
    this.deliveryAddress,
    this.deliveryLatitude,
    this.deliveryLongitude,
    this.deliveryIntercom,
    this.deliveringTime,
    this.notes,
    this.deliveryTime,
    this.canChangeServicePoint,
    required this.zoneId,
    this.supplementPrice,
    required this.paymentType,
  });

  factory FFDeliveryInfo.fromJson(Map<String, dynamic> json) => _$FFDeliveryInfoFromJson(json);
  Map<String, dynamic> toJson() => _$FFDeliveryInfoToJson(this);
}

enum FFPaymentMethodsEnum { cash, pos, inApp }
