import 'package:json_annotation/json_annotation.dart';

part 'alt_measure.g.dart';

@JsonSerializable()
class AltMeasure {
  @JsonKey(name: 'serving_weight')
  double? servingWeight;
  String? measure;
  int? seq;
  double? qty;

  AltMeasure({
    this.servingWeight,
    this.measure,
    this.seq,
    this.qty,
  });

  factory AltMeasure.fromJson(Map<String, dynamic> json) => _$AltMeasureFromJson(json);
  Map<String, dynamic> toJson() => _$AltMeasureToJson(this);
}
