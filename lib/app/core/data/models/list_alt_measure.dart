import 'package:json_annotation/json_annotation.dart';

import 'alt_measure.dart';


part 'list_alt_measure.g.dart';

@JsonSerializable()
class ListAltMeasure {
 List<AltMeasure>? listAltMeasure;

  ListAltMeasure({
    this.listAltMeasure,
  });

  factory ListAltMeasure.fromJson(Map<String, dynamic> json) => _$ListAltMeasureFromJson(json);
  Map<String, dynamic> toJson() => _$ListAltMeasureToJson(this);
}
