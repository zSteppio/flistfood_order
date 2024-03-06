import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFOrderID {
  String id;

  FFOrderID({required this.id});

  factory FFOrderID.fromJson(Map<String, dynamic> json) => _$FFOrderIDFromJson(json);
  Map<String, dynamic> toJson() => _$FFOrderIDToJson(this);
}

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
  int? paymentType;
  String? seatNumber;
  String? note;
  //* Dati vecchi
  double? totalPrice;
  int number;
  //int serviceType;
  DateTime? openDate;
  String? ownerName;
  String? expDate;
  int totalQuantity;
  //int paymentStatus;

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
    this.paymentType,
    this.seatNumber,
    this.note,
    this.totalPrice,
    //this.serviceType = 0,
    required this.openDate,
    this.ownerName,
    this.expDate,
    this.number = 0,
    this.totalQuantity = 0,
    //this.paymentStatus = 0,
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
  double? discount;
  int? cookingTypeId;
  String? format;
  int? formatId;
  List<FFVariation> variations;
  String? menuId;
  //* dati vecchi
  String? productName;
  double totalPrice;
  String? cookingType;
  String? id;

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
    this.id,
    this.formatId,
  });

  factory FFDetail.fromJson(Map<String, dynamic> json) => _$FFDetailFromJson(json);
  Map<String, dynamic> toJson() => _$FFDetailToJson(this);

  bool isEqual(List<FFVariation> variationToCompare) {
    if (variationToCompare.length != variations.length) return false;

    for (int i = 0; i < variations.length; i++) {
      if (variationToCompare[i].foodId != variations[i].foodId ||
          variationToCompare[i].alternative != variations[i].alternative ||
          variationToCompare[i].variationType != variations[i].variationType) return false;
    }

    return true;
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
@CopyWith()
class FFVariation {
  int foodId;
  bool? alternative;
  int? variationType;
  int? selectionPriority;
  //* dati vecchi
  String? foodName;
  double price;

  FFVariation({
    required this.foodId,
    this.alternative,
    this.selectionPriority,
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
  int? paymentType;

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
    this.paymentType,
  });

  factory FFDeliveryInfo.fromJson(Map<String, dynamic> json) => _$FFDeliveryInfoFromJson(json);
  Map<String, dynamic> toJson() => _$FFDeliveryInfoToJson(this);
}

enum FFPaymentMethodsEnum { cash, pos, inApp }

/* part of 'flistfood_order.dart';

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFOrder {
  FFOrder({
    this.id,
    this.number = 0,
    this.source,
    required this.openDate,
    this.totalPrice,
    required this.servicePointId,
    this.servicePointName,
    required this.serviceType,
    this.ticketId,
    this.mustBeReadyOn,
    this.exitValue,
    required this.details,
    this.userId,
    this.user,
    required this.ownerId,
    this.ownerName,
    this.deliveryInfo,
    this.paymentStatus = 0,
    this.seatNumber,
    this.note,
    this.paymentType = 1,
    this.expDate,
    this.code,
  });

  String? id;
  int number;
  String? source;
  DateTime? openDate;
  double? totalPrice;
  String servicePointId;
  String? servicePointName;
  int serviceType;
  String? ticketId;
  DateTime? mustBeReadyOn;
  int? exitValue;
  List<FFDetail> details;
  String? userId;
  String? user;
  String ownerId;
  String? ownerName;
  FFDeliveryInfo? deliveryInfo;
  int paymentStatus;
  String? seatNumber;
  String? note;
  int paymentType;
  String? expDate;
  String? code;

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

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class SingleFoodDetail {
  int id;
  bool selected;

  SingleFoodDetail({required this.id, required this.selected});

  factory SingleFoodDetail.fromJson(Map<String, dynamic> json) => _$SingleFoodDetailFromJson(json);
  Map<String, dynamic> toJson() => _$SingleFoodDetailToJson(this);
}


 */
