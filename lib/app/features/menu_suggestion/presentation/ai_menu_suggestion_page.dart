import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/core/widget/ai_loading_state_widget.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/widget/meal_suggestion.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/shared/widget/common_button.dart';
import 'package:nutritrion/app/shared/widget/common_icon_button.dart';

import 'controller/ai_menu_suggestion_controller.dart';

class AIMenuSuggestionPage extends ConsumerStatefulWidget {
  const AIMenuSuggestionPage({super.key});

  @override
  ConsumerState<AIMenuSuggestionPage> createState() => _AIMenuSuggestionState();
}

class _AIMenuSuggestionState extends ConsumerState<AIMenuSuggestionPage> {
  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(aIMenuSuggestionControllerProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Menu suggestion"),
          actions: [
            asyncValue.when(
                data: (data) => CommonIconButton(
                    iconData: Icons.refresh,
                    function: () =>
                        ref.read(aIMenuSuggestionControllerProvider.notifier).refresh()),
                error: (e, st) => CommonIconButton(
                    iconData: Icons.refresh,
                    function: () =>
                        ref.read(aIMenuSuggestionControllerProvider.notifier).refresh()),
                loading: () => const SizedBox())
          ],
        ),
        body: asyncValue.when(
          data: (data) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
              child: CustomScrollView(
                slivers: [
                  SliverMainAxisGroup(
                      slivers: data.menu
                          .map((meal) => MealSuggestion(mealSuggestionEntity: meal))
                          .toList()),
                ],
              ),
            );
          },
          error: (e, st) => ErrorStateWidget(error: e.toString()),
          loading: () => const Center(
            child: AILoadingStateWidget(
              loadingText: "Creating your menu .....",
            ),
          ),
        ));
  }
}
