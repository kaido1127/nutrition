import 'package:flutter_riverpod/flutter_riverpod.dart';

final isSearchingStateProvider = StateProvider.autoDispose<bool>((ref)=>false);