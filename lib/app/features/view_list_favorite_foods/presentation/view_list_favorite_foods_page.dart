import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/food_item_card.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/presentation/controller/search_text_filed_state_provider.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/presentation/controller/searching_state_provider.dart';
import 'package:nutritrion/app/features/view_list_favorite_foods/presentation/controller/view_list_favorite_foods_controller.dart';
import 'package:nutritrion/app/shared/widget/common_icon_button.dart';
import 'package:nutritrion/app/shared/widget/not_found_widget.dart';

class ViewListFavoriteFoodsPage extends ConsumerStatefulWidget {
  final bool isSelectMode;
  const ViewListFavoriteFoodsPage({super.key, required this.isSelectMode});

  @override
  ConsumerState<ViewListFavoriteFoodsPage> createState() => _ViewListFavoriteFoodsPageState();
}

class _ViewListFavoriteFoodsPageState extends ConsumerState<ViewListFavoriteFoodsPage> {
  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(viewListFavoriteFoodsControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: (ref.watch(isSearchingStateProvider))
            ? TextField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                onSubmitted: (value) {},
                onChanged: (value) => ref.read(searchTextFieldStateProvider.notifier).state = value,
                decoration: InputDecoration(
                  //suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
                  hintText: "Search Your Food Now",
                  filled: true,
                  fillColor: Colors.lightBlue[50],
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.lightBlue.shade100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.lightBlue.shade100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.lightBlue.shade100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                ),
              )
            : const Text("My Favorite Foods"),
        actions: [
          (!ref.watch(isSearchingStateProvider))
              ? CommonIconButton(
                  function: () => ref.read(isSearchingStateProvider.notifier).state = true,
                  iconData: Icons.search,
                )
              : IconButton(
                  onPressed: () => ref.read(isSearchingStateProvider.notifier).state = false,
                  icon: const CircleAvatar(
                      child: Icon(
                    Icons.close,
                    color: Colors.black54,
                  )),
                )
        ],
      ),

      /*floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(viewListFavoriteFoodsControllerProvider.notifier).clearAllFavoriteFoods();
        },
        child: const Text("Clear all"),
      ),*/
      body: asyncValue.when(
          data: (data) {
            final listFood = data.reversed.toList();
            return (listFood.isNotEmpty)
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          final food = listFood[index];
                          return Stack(
                            children: [
                              FoodItemCard(foodItemEntity: food),
                              Positioned(
                                  top: -5,
                                  right: -5,
                                  child: (widget.isSelectMode)
                                      ? IconButton(
                                          onPressed: () async {
                                            /*final foodDetailsEntity = await ref
                                                .read(foodDetailsControllerProvider(
                                                        Tuple2<String, DataSourceType>(
                                                            food.foodName, DataSourceType.local))
                                                    .notifier)
                                                .foodDetailsEntity();

                                            ref
                                                .read(foodSelectedControllerProvider.notifier)
                                                .addFoodToList(foodDetailsEntity);*/

                                            /*foodDetailsEntityAsync.when(
                                                data: (data) {
                                                  print("Async Data");
                                                  ref
                                                      .read(foodSelectedControllerProvider.notifier)
                                                      .addFoodToList(data);
                                                  print("Async Data");
                                                },
                                                error: (e, st) => ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                        SnackBar(content: Text(e.toString()))),
                                                loading: () {
                                                  print("Async Loading");
                                                });*/
                                            context.pop();
                                          },
                                          icon: const CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Colors.grey,
                                            child: Icon(
                                              Icons.add,
                                              size: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      : IconButton(
                                          onPressed: () {
                                            ref
                                                .watch(viewListFavoriteFoodsControllerProvider
                                                    .notifier)
                                                .deleteFood(food.foodName);
                                          },
                                          icon: const CircleAvatar(
                                            radius: 8,
                                            backgroundColor: Colors.redAccent,
                                            child: Icon(
                                              Icons.clear,
                                              size: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ))
                            ],
                          );
                        },
                        itemCount: listFood.length),
                  )
                : NotFoundWidget();
          },
          error: (e, st) => ErrorStateWidget(error: e.toString()),
          loading: () => const LoadingStateWidget()),
    );
  }
}
