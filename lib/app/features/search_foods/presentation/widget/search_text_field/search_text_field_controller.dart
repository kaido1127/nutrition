import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_text_field_controller.g.dart';

@riverpod
class SearchTextFieldController extends _$SearchTextFieldController{
  @override
  TextEditingController build(){
    return TextEditingController();
  }
  void changeText(String text){
    state = TextEditingController(text: text);
  }
}