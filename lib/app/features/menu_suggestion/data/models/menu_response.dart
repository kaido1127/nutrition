import 'package:json_annotation/json_annotation.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/models/menu_suggestion_model.dart';

part 'menu_response.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake)
class MenuResponse {

  @JsonKey(name: "meals")
  final MenuSuggestionModel menu;


  MenuResponse({required this.menu});


  factory MenuResponse.fromJson(Map<String, dynamic> json) => _$MenuResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MenuResponseToJson(this);
}
