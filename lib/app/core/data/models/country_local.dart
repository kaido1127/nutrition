import 'package:country_picker/country_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country_local.g.dart';

@JsonSerializable()
class CountryLocal {
  ///The country phone code
  final String phoneCode;

  ///The country code, ISO (alpha-2)
  final String countryCode;
  final int e164Sc;
  final bool geographic;
  final int level;

  ///The country name in English
  final String name;

  ///An example of a telephone number without the phone code
  final String example;

  ///Country name (country code) [phone code]
  final String displayName;

  ///An example of a telephone number with the phone code and plus sign
  final String? fullExampleWithPlusSign;

  ///Country name (country code)

  final String displayNameNoCountryCode;
  final String e164Key;

  CountryLocal(
      {required this.phoneCode,
      required this.countryCode,
      required this.e164Sc,
      required this.geographic,
      required this.level,
      required this.name,
      required this.example,
      required this.displayName,
      required this.fullExampleWithPlusSign,
      required this.displayNameNoCountryCode,
      required this.e164Key});

  factory CountryLocal.fromJson(Map<String, dynamic> json) => _$CountryLocalFromJson(json);

  factory CountryLocal.fromCountryPicker(Country country) => CountryLocal(
      phoneCode: country.phoneCode,
      countryCode: country.countryCode,
      e164Sc: country.e164Sc,
      geographic: country.geographic,
      level: country.level,
      name: country.name,
      example: country.example,
      displayName: country.displayName,
      fullExampleWithPlusSign: country.fullExampleWithPlusSign,
      displayNameNoCountryCode: country.displayNameNoCountryCode,
      e164Key: country.e164Key);

  Map<String, dynamic> toJson() => _$CountryLocalToJson(this);

  Country toCountryOfPicker() => Country(
      phoneCode: phoneCode,
      countryCode: countryCode,
      e164Sc: e164Sc,
      geographic: geographic,
      level: level,
      name: name,
      example: example,
      displayName: displayName,
      displayNameNoCountryCode: displayNameNoCountryCode,
      e164Key: e164Key);
}
