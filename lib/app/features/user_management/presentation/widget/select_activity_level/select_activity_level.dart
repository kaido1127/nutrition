import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_activity_level/activity_level_controller.dart';
import 'package:nutritrion/app/shared/widget/common_drop_down_button_form_decoration.dart';

class SelectActivityLevel extends ConsumerWidget {
  const SelectActivityLevel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Activity level',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        DropdownButtonFormField(
          decoration: commonDropDownButtonFormDecoration('Select your activity level'),
          value: ref.watch(activityLevelControllerProvider), // Set the default value here
          items: activityLevels
              .map((level) => DropdownMenuItem(value: level, child: Text(level.$2)))
              .toList(),
          onChanged: (level) {
            ref
                .read(activityLevelControllerProvider.notifier)
                .changeActivityLevel(level ?? activityLevels.first);
          },
        ),
      ],
    );
  }
}
