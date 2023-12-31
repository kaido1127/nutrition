import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_birth_day/birth_day_controller.dart';
import 'package:nutritrion/app/shared/widget/common_text_filed.dart';

class SelectBirthDay extends ConsumerWidget {
  const SelectBirthDay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonTextField(
      title: 'Birthday',
      hintText: DateFormat("dd-MM-yyyy").format(ref.watch(birthDayControllerProvider)),
      readOnly: true,
      icon: IconButton(
          onPressed: () {
            ref.read(birthDayControllerProvider.notifier).changeDay(context);
          },
          icon: const Icon(Icons.calendar_today_rounded)),
    );
  }
}
