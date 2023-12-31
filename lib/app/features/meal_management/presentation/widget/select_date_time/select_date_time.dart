import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nutritrion/app/common/meal_type.dart';
import 'package:nutritrion/app/helper/convert_hour_to_meal_type.dart';
import 'package:nutritrion/app/helper/string_format_helper.dart';

final dateStateProvider = StateProvider.autoDispose<DateTime>((ref) => DateTime.now());
final mealStateProvider = StateProvider.autoDispose<MealType>(
    (ref) => mealTypeFromInt(convertHourToMealType(DateTime.now().hour)));

class SelectDateTime extends ConsumerWidget {
  const SelectDateTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateTime = ref.watch(dateStateProvider);
    final formatTime = DateFormat("dd-MM-yyyy").format(dateTime);
//final time = ref.watch(timeControllerProvider);
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Date",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => _selectDate(context, ref),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue.shade100),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorStyle: const TextStyle(color: Colors.lightBlueAccent),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
                icon: Icon(
                  Icons.calendar_today_rounded,
                  color: Colors.grey[700],
                ),
                value: formatTime,
                onChanged: (val) {},
                hint: Text(
                  formatTime,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                items: null,
              ),
            ),
          ],
        )),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Meal",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue.shade100),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorStyle: const TextStyle(color: Colors.lightBlueAccent),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
              value: ref.watch(mealStateProvider),
              items: (MealType.values).map((meal) {
                return DropdownMenuItem(
                  value: meal,
                  child: Text(
                    StringFormatHelper.upperCaseFirstCharOfString(meal.name),
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                );
              }).toList(),
              onChanged: (val) {
                if (val != null) {
                  ref.read(mealStateProvider.notifier).state = val;
                }
              },
            ),
          ],
        )),
      ],
    );
  }

  void _selectDate(BuildContext context, WidgetRef ref) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      ref.read(dateStateProvider.notifier).state = pickedDate;
    }
  }
// void _selectTime(BuildContext context, WidgetRef ref) async {
//   TimeOfDay? pickedTime = await showTimePicker(
//     context: context,
//     initialTime: TimeOfDay.now(),
//   );
//   if (pickedTime != null) {
//     ref.read(timeControllerProvider.notifier).changeTimeOfDay(pickedTime);
//   }
// }
}
