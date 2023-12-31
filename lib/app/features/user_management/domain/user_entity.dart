import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/core/data/local/app_database.dart';
import 'package:nutritrion/app/core/data/models/country_local.dart';

part 'user_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserEntity {
  String? fullName;
  int? joinDate;
  bool? sex;
  DateTime? birthDay;
  double? height;
  double? weight;
  int? activityLevel;
  int? completeWeeksTarget;
  double? weightTarget;
  DateTime? startTimeTarget;
  CountryLocal? country;

  UserEntity(
      {required this.fullName,
      required this.joinDate,
      required this.sex,
      required this.birthDay,
      required this.height,
      required this.weight,
      required this.activityLevel,
      required this.completeWeeksTarget,
      required this.weightTarget,
      required this.startTimeTarget,
      required this.country});

  UserData toUserData() => UserData(
      fullName: fullName ?? ' ',
      joinDate: joinDate ?? DateTime.now().millisecondsSinceEpoch,
      sex: sex ?? false,
      birthDay: birthDay ?? DateTime.now(),
      height: height ?? 0,
      weight: weight ?? 0,
      activityLevel: activityLevel ?? 0,
      completeWeeksTarget: completeWeeksTarget ?? 0,
      weightTarget: weightTarget ?? 50.0,
      startTimeTarget: startTimeTarget ?? DateTime.now(),
  country: country);

  UserCompanion toUserCompanion() => UserCompanion(
      fullName: Value.ofNullable(fullName),
      joinDate: Value.ofNullable(joinDate),
      sex: Value.ofNullable(sex),
      birthDay: Value.ofNullable(birthDay),
      height: Value.ofNullable(height),
      weight: Value.ofNullable(weight),
      activityLevel: Value.ofNullable(activityLevel),
      completeWeeksTarget: Value.ofNullable(completeWeeksTarget),
      weightTarget: Value.ofNullable(weightTarget),
      startTimeTarget: Value.ofNullable(startTimeTarget),
  country: Value.ofNullable(country));

  factory UserEntity.fromUserData(UserData userData) => UserEntity(
      fullName: userData.fullName,
      joinDate: userData.joinDate,
      sex: userData.sex,
      birthDay: userData.birthDay,
      height: userData.height,
      weight: userData.weight,
      activityLevel: userData.activityLevel,
      completeWeeksTarget: userData.completeWeeksTarget,
      weightTarget: userData.weightTarget,
      startTimeTarget: userData.startTimeTarget,
  country: userData.country);

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  @override
  String toString() {
    return this.toJson().toString();
  }
}
