import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_sex/sex_controller.dart';
import 'package:nutritrion/app/shared/widget/common_drop_down_button_form_decoration.dart';

class SelectSex extends ConsumerWidget {
  const SelectSex({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Sex',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        DropdownButtonFormField(
          decoration: commonDropDownButtonFormDecoration('Your sex'),
          icon: Icon((ref.watch(sexControllerProvider).$1) ? Icons.male : Icons.female),
          value: ref.watch(sexControllerProvider), // Set the default value here
          items: sex.map((level) => DropdownMenuItem(value: level, child: Text(level.$2))).toList(),
          onChanged: (value) {
            ref.read(sexControllerProvider.notifier).changeSex(value ?? sex.first);
          },
        ),
      ],
    );
  }
}
