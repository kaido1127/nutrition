import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchTextFieldStateProvider = StateProvider.autoDispose<String>((ref)=>'');