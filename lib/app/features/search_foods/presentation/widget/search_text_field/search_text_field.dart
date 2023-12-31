import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/search_foods/presentation/controller/barcode_controller.dart';
import 'package:nutritrion/app/features/search_foods/presentation/widget/search_text_field/search_text_field_controller.dart';

class SearchTextFiled extends ConsumerWidget {
  const SearchTextFiled({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: ref.watch(searchTextFieldControllerProvider),
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onSubmitted: (value) {
        ref.read(barcodeControllerProvider.notifier).stopScan();
        ref.read(searchTextFieldControllerProvider.notifier).changeText(value);
      },
      decoration: InputDecoration(
        suffixIcon: ref.watch(searchTextFieldControllerProvider).text.isEmpty
            ? IconButton(
                onPressed: () {
                  ref.read(barcodeControllerProvider.notifier).stopScan();
                  ref
                      .read(searchTextFieldControllerProvider.notifier)
                      .changeText(ref.watch(searchTextFieldControllerProvider).text);
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                icon: const Icon(Icons.search))
            : IconButton(
                onPressed: () {
                  ref.read(barcodeControllerProvider.notifier).stopScan();
                  ref.watch(searchTextFieldControllerProvider).clear();
                  ref
                      .read(searchTextFieldControllerProvider.notifier)
                      .changeText(ref.watch(searchTextFieldControllerProvider).text);
                },
                icon: const Icon(Icons.close)),
        hintText: "Search Your Food Now",
        filled: true,
        fillColor: Colors.lightBlue[50],
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.lightBlue.shade100),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.lightBlue.shade100),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.lightBlue.shade100),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    );
  }
}
