import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/models/food_suggestion_model.dart';

part 'menu_suggestion_model.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake)
class MenuSuggestionModel {
  final List<FoodSuggestionModel> breakfast;
  final List<FoodSuggestionModel> lunch;
  final List<FoodSuggestionModel> dinner;
  final List<FoodSuggestionModel> snack;


  factory MenuSuggestionModel.fromJson(Map<String, dynamic> json) => _$MenuSuggestionModelFromJson(json);

  MenuSuggestionModel({required this.breakfast, required this.lunch, required this.dinner, required this.snack});
  Map<String, dynamic> toJson() => _$MenuSuggestionModelToJson(this);
}
