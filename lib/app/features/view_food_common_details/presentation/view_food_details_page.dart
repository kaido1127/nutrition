import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/common/data_source_type.dart';
import 'package:nutritrion/app/features/view_food_common_details/presentation/controller/favorite_state_provider.dart';
import 'package:nutritrion/app/features/view_food_common_details/presentation/controller/food_details_controller.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/shared/widget/food_details.dart';
import 'package:nutritrion/app/shared/widget/serving_select.dart';
import 'package:tuple/tuple.dart';


class ViewFoodDetailsPage extends ConsumerStatefulWidget {
  Tuple2<String, DataSourceType> tuple;
  //FoodCommonDetailsEntity foodCommon;
  ViewFoodDetailsPage({super.key, required this.tuple});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FoodCommonDetailsPageState();
}

class _FoodCommonDetailsPageState extends ConsumerState<ViewFoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    //final ratio = ref.watch(attributeRatioStateController(foodCommon));
    final asyncValue = ref.watch(foodDetailsControllerProvider(widget.tuple));
    return Scaffold(
      appBar: AppBar(
        actions: [
          asyncValue.when(data: (data) {
            final foodCommon = data;
            return IconButton(
                onPressed: () {
                  ref.read(favoriteStateControllerProvider(widget.tuple).notifier).changeFoodState(foodCommon);
                  if(foodCommon.dataSourceType == DataSourceType.local){
                    context.pop();
                  }
                },
                icon: (ref.watch(favoriteStateControllerProvider(widget.tuple)).value??false)
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(Icons.favorite_border));
          }, error: (e, st) {
            return const SizedBox();
          }, loading: () {
            return const SizedBox();
          }),
        ],
        title: Text(StringFormatHelper.upperCaseFirstCharOfString(widget.tuple.item1)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        //color: Colors.lightBlue.shade50,
        width: deviceSize.width,
        height: deviceSize.height * 0.10,
        child: asyncValue.when(
            data: (data) {
              final foodCommon = data;
              return ServingSelect(foodCommon: foodCommon);
            },
            error: (e, st) {},
            loading: () {}),
      ),
      body: asyncValue.when(
          data: (data) {
            final foodCommon = data;
            return Padding(
              padding: const EdgeInsets.all(8),
              child: FoodDetails(foodCommon: foodCommon, deviceSize: deviceSize),
            );
          },
          error: (e, st) => ErrorStateWidget(error: e.toString()),
          loading: () => const LoadingStateWidget()),
    );
  }
}
