import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/list_food_item.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/features/search_foods/presentation/controller/barcode_controller.dart';
import 'package:nutritrion/app/features/search_foods/presentation/controller/seach_foods_controller.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/search_text_field/search_text_field_controller.dart';
import 'package:nutritrion/app/shared/widget/not_found_widget.dart';
import 'package:nutritrion/app/shared/widget/search_widget.dart';

class SearchAllFoodsTab extends ConsumerStatefulWidget {
  const SearchAllFoodsTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchFoodsPageState();
}

class _SearchFoodsPageState extends ConsumerState<SearchAllFoodsTab> {
  @override
  Widget build(BuildContext context) {
    final asyncLocalValue = ref.watch(searchFoodsLocalController);
    final asyncRemoteValue = ref.watch(searchFoodRemoteControllerProvider);

    return (ref.watch(searchTextFieldControllerProvider).text.isNotEmpty ||
            ref.watch(barcodeControllerProvider).isNotEmpty)
        ? CustomScrollView(
            slivers: [
              //View Favorite Food
              const SliverPadding(
                padding: EdgeInsets.only(top: 10),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'Favorite Foods',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              asyncLocalValue.when(data: (data) {
                final listFavoriteFood = data
                    .where((food) => food.foodType == FoodType.favorite)
                    .toList()
                    .reversed
                    .toList();
                final listFavoriteFoodCut = (listFavoriteFood.length >= 3)
                    ? (listFavoriteFood.sublist(0, 3))
                    : listFavoriteFood;
                return SliverMainAxisGroup(slivers: [
                  ListFoodItem(listFoods: listFavoriteFoodCut),
                  if (listFavoriteFood.length > 3)
                    SliverToBoxAdapter(
                      child: TextButton(
                        onPressed: () {
                          DefaultTabController.of(context).animateTo(3);
                        },
                        child: const Text("Show More Results"),
                      ),
                    ),
                ]);
              }, error: (e, s) {
                return SliverToBoxAdapter(
                  child: ErrorStateWidget(error: e.toString()),
                );
              }, loading: () {
                return const SliverToBoxAdapter(
                  child: LoadingStateWidget(),
                );
              }),

              //View Common Foods
              const SliverToBoxAdapter(
                child: Text(
                  'Common Foods',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              asyncRemoteValue.when(
                  data: (data) {
                    final listCommonFood =
                        data.where((food) => food.foodType == FoodType.common).toList();
                    final listCommonFoodCut = (listCommonFood.length > 3)
                        ? (listCommonFood.sublist(0, 3))
                        : listCommonFood;
                    return SliverMainAxisGroup(slivers: [
                      ListFoodItem(listFoods: listCommonFoodCut),
                      if (listCommonFood.length > 3)
                        SliverToBoxAdapter(
                          child: TextButton(
                            onPressed: () {
                              DefaultTabController.of(context).animateTo(1);
                            },
                            child: const Text("Show More Results"),
                          ),
                        ),
                    ]);
                  },
                  error: (e, s) => SliverToBoxAdapter(
                        child: ErrorStateWidget(
                          error: e.toString(),
                        ),
                      ),
                  loading: () {
                    return const SliverToBoxAdapter(
                      child: LoadingStateWidget(),
                    );
                  }),

              //View Branded Food
              const SliverToBoxAdapter(
                child: Text(
                  'Branded Foods',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              asyncRemoteValue.when(data: (data) {
                final listBrandedFood =
                    data.where((food) => food.foodType == FoodType.branded).toList();
                final listBrandedFoodCut = (listBrandedFood.length > 3)
                    ? (listBrandedFood.sublist(0, 3))
                    : listBrandedFood;
                return SliverMainAxisGroup(slivers: [
                  ListFoodItem(listFoods: listBrandedFoodCut),
                  if (listBrandedFood.length > 3)
                    SliverToBoxAdapter(
                      child: TextButton(
                        onPressed: () {
                          DefaultTabController.of(context).animateTo(2);
                        },
                        child: const Text("Show More Results"),
                      ),
                    ),
                ]);
              }, error: (e, s) {
                return (e == 404)
                    ? SliverToBoxAdapter(child: NotFoundWidget())
                    : SliverToBoxAdapter(
                        child: Center(
                          child: Text(e.toString()),
                        ),
                      );
              }, loading: () {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }),
            ],
          )
        : SearchWidegt();
  }
}
