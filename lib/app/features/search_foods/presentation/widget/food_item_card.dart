import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/common/food_type.dart';
import 'package:nutritrion/app/shared/domain/food_item_entity.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/shared/widget/add_new_dish_widget/add_new_dish_widget.dart';
import 'package:nutritrion/app/shared/widget/common_icon_button.dart';
import 'package:nutritrion/app/shared/widget/food_list_tile.dart';
import 'package:tuple/tuple.dart';

class FoodItemCard extends ConsumerWidget {
  final FoodItemEntity foodItemEntity;

  const FoodItemCard({super.key, required this.foodItemEntity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isAdd = ((foodItemEntity.foodType == FoodType.common ||
        foodItemEntity.foodType == FoodType.favorite));
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () async {
        if (foodItemEntity.foodType == FoodType.common) {
          context.push('/view_food_common_details_page',
              extra:
                  Tuple2<String, DataSourceType>(foodItemEntity.foodName, DataSourceType.remote));
        }
        if (foodItemEntity.foodType == FoodType.favorite) {
          context.push('/view_food_common_details_page',
              extra: Tuple2<String, DataSourceType>(foodItemEntity.foodName, DataSourceType.local));
        }
      },
      child: Card(
        child: FoodListTile(
          imageUrl: foodItemEntity.photoUrl,
          title: foodItemEntity.foodName,
          subtitle: StringFormatHelper.upperCaseFirstCharOfString(foodItemEntity.subtitle ?? ''),
          calorie: foodItemEntity.nfCalories,
          add: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    foodItemEntity.nfCalories,
                    style: const TextStyle(fontSize: 14, color: Colors.lightBlue),
                  ),
                  const Text(
                    "Cal",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
              if (isAdd)
                CommonIconButton(
                    iconData: Icons.add,
                    function: () {
                      DataSourceType dataSourceType = (foodItemEntity.foodType == FoodType.favorite)
                          ? DataSourceType.local
                          : DataSourceType.remote;
                      //FoodDetailsEntity foodDetailsEntity;

                      print(foodItemEntity.foodName);
                      print(dataSourceType.name);
                      context.push("/add_new_dish_page",
                          extra: (foodItemEntity.foodName, dataSourceType));
                    }),
            ],
          ),
        ),
      ),
    );
  }
}
