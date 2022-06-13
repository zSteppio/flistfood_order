part of 'flistfood_order.dart';

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
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
    this.paymentType = 1,
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
  int paymentType;

  factory FFOrder.fromJson(Map<String, dynamic> json) => _$FFOrderFromJson(json);
  Map<String, dynamic> toJson() => _$FFOrderToJson(this);
}

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFDeliveryInfo {
  FFDeliveryInfo({
    this.customerName,
    this.phoneNumber,
    required this.paymentType,
    this.deliveryAddress,
    this.deliveryLatitude,
    this.deliveryLongitude,
    this.deliveryIntercom,
    this.notes,
    this.referenceCode,
    this.deliveryNotes,
    this.deliveringTime,
    this.canChangeServicePoint,
    this.paymentStatus,
    this.deliveryTime,
    this.supplementPrice,
  });

  String? customerName;
  String? phoneNumber;
  int paymentType;
  String? deliveryAddress;
  double? deliveryLatitude;
  double? deliveryLongitude;
  String? deliveryIntercom;
  String? notes;
  String? referenceCode;
  String? deliveryNotes;
  int? deliveringTime;
  bool? canChangeServicePoint;
  int? paymentStatus;
  DateTime? deliveryTime;
  double? supplementPrice;

  factory FFDeliveryInfo.fromJson(Map<String, dynamic> json) => _$FFDeliveryInfoFromJson(json);
  Map<String, dynamic> toJson() => _$FFDeliveryInfoToJson(this);
}

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
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

  factory FFDetail.fromJson(Map<String, dynamic> json) => _$FFDetailFromJson(json);
  Map<String, dynamic> toJson() => _$FFDetailToJson(this);
}

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
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

  factory FFVariation.fromJson(Map<String, dynamic> json) => _$FFVariationFromJson(json);
  Map<String, dynamic> toJson() => _$FFVariationToJson(this);
}
