// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_suggestion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuSuggestionModel _$MenuSuggestionModelFromJson(Map<String, dynamic> json) =>
    MenuSuggestionModel(
      breakfast: (json['breakfast'] as List<dynamic>)
          .map((e) => FoodSuggestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lunch: (json['lunch'] as List<dynamic>)
          .map((e) => FoodSuggestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dinner: (json['dinner'] as List<dynamic>)
          .map((e) => FoodSuggestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      snack: (json['snack'] as List<dynamic>)
          .map((e) => FoodSuggestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuSuggestionModelToJson(
        MenuSuggestionModel instance) =>
    <String, dynamic>{
      'breakfast': instance.breakfast,
      'lunch': instance.lunch,
      'dinner': instance.dinner,
      'snack': instance.snack,
    };
