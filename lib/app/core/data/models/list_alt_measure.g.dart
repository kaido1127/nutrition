// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_alt_measure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListAltMeasure _$ListAltMeasureFromJson(Map<String, dynamic> json) =>
    ListAltMeasure(
      listAltMeasure: (json['listAltMeasure'] as List<dynamic>?)
          ?.map((e) => AltMeasure.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListAltMeasureToJson(ListAltMeasure instance) =>
    <String, dynamic>{
      'listAltMeasure': instance.listAltMeasure,
    };
