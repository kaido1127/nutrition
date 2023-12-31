import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/search_type.dart';
import 'package:nutritrion/app/features/search_foods/data/repository/search_foods_repository_provider.dart';
import 'package:nutritrion/app/shared/domain/food_item_entity.dart';
import 'package:nutritrion/app/features/search_foods/presentation/controller/barcode_controller.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/search_text_field/search_text_field_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'seach_foods_controller.g.dart';

@riverpod
class SearchFoodRemoteController extends _$SearchFoodRemoteController {
  @override
  Future<List<FoodItemEntity>> build() async {
    try {
      final searchFoodRepository = ref.watch(searchFoodRepositoryProvider);

      if (ref.watch(barcodeControllerProvider).isNotEmpty) {
        final listFood = searchFoodRepository.searchRemote(
            ref.watch(barcodeControllerProvider), SearchType.byBarcode);

        return listFood;
      } else {
        if (ref.watch(searchTextFieldControllerProvider).text.isNotEmpty) {
          final listFood = searchFoodRepository.searchRemote(
              ref.watch(searchTextFieldControllerProvider).text, SearchType.byText);

          return listFood;
        } else {
          return [];
        }
      }
    } on DioException catch (e) {

      return Future.error(e.response!.statusCode??200);
    }
  }
}

final searchFoodsLocalController = StreamProvider.autoDispose<List<FoodItemEntity>>((ref) {
  try {
    if (ref.watch(searchTextFieldControllerProvider).text.isNotEmpty) {
      final searchFoodRepository = ref.watch(searchFoodRepositoryProvider);
      final streamListFood =
          searchFoodRepository.searchLocal(ref.watch(searchTextFieldControllerProvider).text);
      return streamListFood;
    } else {
      return Stream.value([]);
    }
  } catch (e) {
    return Stream.error(e);
  }
});
