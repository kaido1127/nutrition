import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/features/search_foods/presentation/controller/barcode_controller.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/search_text_field/search_text_field.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/tab/search_all_foods_tab.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/tab/search_foods_filter_by_type_tab.dart';

class SearchFoodsPage extends ConsumerWidget {
  const SearchFoodsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          //flexibleSpace: SearchTextFiled(),
          title: SearchTextFiled(),
          actions: [
            IconButton(
              onPressed: () {
                ref.read(barcodeControllerProvider.notifier).startScan();
              },
              icon: const CircleAvatar(
                  child: Icon(
                Icons.qr_code_scanner,
                color: Colors.black54,
              )),
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Common'),
                  Tab(text: 'Branded'),
                  Tab(
                    text: 'Favorite',
                  )
                ],
              ),
              Expanded(
                flex: 5,
                child: TabBarView(children: [
                  SearchAllFoodsTab(),
                  SearchFoodsFilterByTypeTab(foodType: FoodType.common),
                  SearchFoodsFilterByTypeTab(foodType: FoodType.branded),
                  SearchFoodsFilterByTypeTab(foodType: FoodType.favorite),
                  //SearchFilterFoodsTab(foodType: FoodType.favorite),
                ]),
              ),
            ],
          ),
        ),
        /*floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final result = await FoodsAPI.getResponseAllFoods("pho ga");
            print(result.foodCommonList.length.toString());
            print(result.foodOfBrandedList.length.toString());
          },
          child: const Icon(Icons.get_app),
        ),*/
      ),
    );
  }
}
