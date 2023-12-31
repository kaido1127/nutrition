// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_suggestion_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuSuggestionEntity _$MenuSuggestionEntityFromJson(
        Map<String, dynamic> json) =>
    MenuSuggestionEntity(
      menu: (json['menu'] as List<dynamic>)
          .map((e) => MealSuggestionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuSuggestionEntityToJson(
        MenuSuggestionEntity instance) =>
    <String, dynamic>{
      'menu': instance.menu,
    };
