// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_local.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryLocal _$CountryLocalFromJson(Map<String, dynamic> json) => CountryLocal(
      phoneCode: json['phoneCode'] as String,
      countryCode: json['countryCode'] as String,
      e164Sc: json['e164Sc'] as int,
      geographic: json['geographic'] as bool,
      level: json['level'] as int,
      name: json['name'] as String,
      example: json['example'] as String,
      displayName: json['displayName'] as String,
      fullExampleWithPlusSign: json['fullExampleWithPlusSign'] as String?,
      displayNameNoCountryCode: json['displayNameNoCountryCode'] as String,
      e164Key: json['e164Key'] as String,
    );

Map<String, dynamic> _$CountryLocalToJson(CountryLocal instance) =>
    <String, dynamic>{
      'phoneCode': instance.phoneCode,
      'countryCode': instance.countryCode,
      'e164Sc': instance.e164Sc,
      'geographic': instance.geographic,
      'level': instance.level,
      'name': instance.name,
      'example': instance.example,
      'displayName': instance.displayName,
      'fullExampleWithPlusSign': instance.fullExampleWithPlusSign,
      'displayNameNoCountryCode': instance.displayNameNoCountryCode,
      'e164Key': instance.e164Key,
    };
