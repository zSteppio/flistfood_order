import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_point_model.g.dart';

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFCurrentServicePoint {
  String id;
  double? supplementPrice;
  int? type;

  FFCurrentServicePoint({
    required this.id,
    this.supplementPrice,
    this.type,
  });
  factory FFCurrentServicePoint.fromJson(Map<String, dynamic> json) =>
      _$FFCurrentServicePointFromJson(json);
  Map<String, dynamic> toJson() => _$FFCurrentServicePointToJson(this);
}
