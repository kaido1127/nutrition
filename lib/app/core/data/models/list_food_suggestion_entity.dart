import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/features/menu_suggestion/domain/food_suggestion_entity.dart';

part 'list_food_suggestion_entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ListFoodSuggestionEntity {
  final List<FoodSuggestionEntity> listFood;

  factory ListFoodSuggestionEntity.fromJson(Map<String, dynamic> json) =>
      _$ListFoodSuggestionEntityFromJson(json);

  ListFoodSuggestionEntity({required this.listFood});

  Map<String, dynamic> toJson() => _$ListFoodSuggestionEntityToJson(this);

}
