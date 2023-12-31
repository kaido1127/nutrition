// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      fullName: json['full_name'] as String?,
      joinDate: json['join_date'] as int?,
      sex: json['sex'] as bool?,
      birthDay: json['birth_day'] == null
          ? null
          : DateTime.parse(json['birth_day'] as String),
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      activityLevel: json['activity_level'] as int?,
      completeWeeksTarget: json['complete_weeks_target'] as int?,
      weightTarget: (json['weight_target'] as num?)?.toDouble(),
      startTimeTarget: json['start_time_target'] == null
          ? null
          : DateTime.parse(json['start_time_target'] as String),
      country: json['country'] == null
          ? null
          : CountryLocal.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'join_date': instance.joinDate,
      'sex': instance.sex,
      'birth_day': instance.birthDay?.toIso8601String(),
      'height': instance.height,
      'weight': instance.weight,
      'activity_level': instance.activityLevel,
      'complete_weeks_target': instance.completeWeeksTarget,
      'weight_target': instance.weightTarget,
      'start_time_target': instance.startTimeTarget?.toIso8601String(),
      'country': instance.country,
    };
