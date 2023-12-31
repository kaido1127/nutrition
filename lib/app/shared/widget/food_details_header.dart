import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/common/common_string.dart';
import 'package:nutritrion/app/features/view_food_common_details/domain/entity/food_details_entity.dart';
import 'package:nutritrion/app/features/view_food_common_details/presentation/controller/attribute_ratio_state_controller.dart';
import 'package:nutritrion/app/shared/widget/text_details_card.dart';
import 'package:nutritrion/app/splash_page.dart';
class FoodDetailsHeader extends ConsumerWidget {
  final FoodDetailsEntity foodCommon;

  const FoodDetailsHeader({super.key,required this.foodCommon});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final ratio = ref.watch(attributeRatioStateController(foodCommon));
    return Row(
      children: [
        SizedBox(
          width: deviceSize.width * 0.4,
          height: deviceSize.width * 0.4,
          child: Card(
            color: Colors.lightBlue.shade100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(deviceSize.height * 0.1),
              child: CachedNetworkImage(
                fit: BoxFit.fitHeight,
                width: deviceSize.height * 0.2,
                height: deviceSize.height * 0.2,
                imageUrl: foodCommon.photo?.thumb ?? CommonString.foodImageUrl,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                const CircleAvatar(child: Icon(Icons.person_outlined)),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextDetailsCard(
                      title:
                      "${((foodCommon.nfCalories ?? 0) * ratio).toStringAsFixed(2)} Cal",
                      substring: "Calories"),
                  TextDetailsCard(
                      title:
                      "${((foodCommon.nfTotalFat ?? 0) * ratio).toStringAsFixed(2)} g",
                      substring: "Fat"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextDetailsCard(
                      title:
                      "${((foodCommon.nfTotalCarbohydrate ?? 0) * ratio).toStringAsFixed(2)} g",
                      substring: "Carbs"),
                  TextDetailsCard(
                      title:
                      "${((foodCommon.nfProtein ?? 0) * ratio).toStringAsFixed(2)} g",
                      substring: "Protein"),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
