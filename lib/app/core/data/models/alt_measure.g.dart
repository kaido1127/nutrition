// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alt_measure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AltMeasure _$AltMeasureFromJson(Map<String, dynamic> json) => AltMeasure(
      servingWeight: (json['serving_weight'] as num?)?.toDouble(),
      measure: json['measure'] as String?,
      seq: json['seq'] as int?,
      qty: (json['qty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AltMeasureToJson(AltMeasure instance) =>
    <String, dynamic>{
      'serving_weight': instance.servingWeight,
      'measure': instance.measure,
      'seq': instance.seq,
      'qty': instance.qty,
    };
