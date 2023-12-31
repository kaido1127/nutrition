import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/common/meal_type.dart';


import '../data/models/menu_suggestion_model.dart';
import 'meal_suggestion_entity.dart';


part 'menu_suggestion_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MenuSuggestionEntity {
  final List<MealSuggestionEntity> menu;

  MenuSuggestionEntity({required this.menu});

  factory MenuSuggestionEntity.fromJson(Map<String, dynamic> json) =>
      _$MenuSuggestionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MenuSuggestionEntityToJson(this);

  factory MenuSuggestionEntity.fromMenuSuggestionModel(MenuSuggestionModel menuSuggestionModel) =>
      MenuSuggestionEntity(menu: [
        MealSuggestionEntity.fromModel(menuSuggestionModel.breakfast, MealType.breakfast),
        MealSuggestionEntity.fromModel(menuSuggestionModel.lunch, MealType.lunch),
        MealSuggestionEntity.fromModel(menuSuggestionModel.dinner, MealType.dinner),
        MealSuggestionEntity.fromModel(menuSuggestionModel.snack, MealType.snack),
      ]);
}
