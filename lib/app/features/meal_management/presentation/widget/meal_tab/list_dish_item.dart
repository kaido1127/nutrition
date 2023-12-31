import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/features/meal_management/domain/entity/dish_task_entity.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/meal_management_controller.dart';
import 'package:nutritrion/app/shared/widget/common_container.dart';
import 'package:nutritrion/app/features/meal_management/presentation/widget/meal_tab/dish_item_card.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/not_found_widget.dart';

class ListDishItem extends ConsumerStatefulWidget {
  final bool isEaten;
  final List<DishTaskEntity> listDish;
  const ListDishItem({super.key, required this.isEaten, required this.listDish});

  @override
  ConsumerState<ListDishItem> createState() => _ListDishItemState();
}

class _ListDishItemState extends ConsumerState<ListDishItem> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return CommonContainer(
        height: deviceSize.height * 0.7,
        width: deviceSize.width,
        widget: (widget.listDish.isNotEmpty)
            ? CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final dish = widget.listDish[index];
                      return DishItemCard(dish: dish);
                    }, childCount: widget.listDish.length),
                  )
                ],
              )
            : NotFoundWidget());
  }
}
