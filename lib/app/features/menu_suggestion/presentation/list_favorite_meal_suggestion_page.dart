import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/controller/meal_suggestion_controller.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/splash_page.dart';

import 'widget/meal_suggestion.dart';

class ListFavoriteMealSuggestionPage extends ConsumerStatefulWidget {
  final MealType mealType;

  const ListFavoriteMealSuggestionPage({super.key, required this.mealType});

  @override
  ConsumerState<ListFavoriteMealSuggestionPage> createState() => _MyMealSuggestionPageState();
}

class _MyMealSuggestionPageState extends ConsumerState<ListFavoriteMealSuggestionPage> {
  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(mealSuggestionControllerProvider(widget.mealType));
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Favorite ${StringFormatHelper.upperCaseFirstCharOfString(widget.mealType.name)}"),
      ),
      body: asyncValue.when(
          data: (data) {
            return (data.isNotEmpty)
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                    child: CustomScrollView(slivers: [
                      // SliverToBoxAdapter(
                      //   child: CommonButton(
                      //     function: () => context.push('/ai_menu_suggestion_page'),
                      //     text: "Find new menus with AI suggestions",
                      //   ),
                      // ),
                      SliverMainAxisGroup(
                          slivers: data
                              .map((meal) => MealSuggestion(mealSuggestionEntity: meal))
                              .toList()),
                    ]),
                  )
                : Center(
                    child: InkWell(
                      onTap: () => context.pushReplacement('/ai_menu_suggestion_page'),
                      child: SizedBox(
                        height: deviceSize.height * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: deviceSize.width * 0.7,
                              child: Lottie.asset("asset/lottie/ai_chatbot.json"),
                            ),
                            const Text(
                              'Click to add your meal with AI suggestions',
                              style: TextStyle(color: Colors.black54, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
          },
          error: (e, st) => ErrorStateWidget(error: e.toString()),
          loading: () => const LoadingStateWidget()),
    );
  }
}
