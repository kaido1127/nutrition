import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_country/country_controller.dart';
import 'package:nutritrion/app/shared/widget/common_text_filed.dart';

class SelectCountry extends ConsumerWidget {
  const SelectCountry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var country = ref.watch(countryControllerProvider);
    return CommonTextField(
      title: 'Country',
      hintText: (country == null)
          ? 'Select your country'
          : '+${country?.phoneCode}  ${country?.displayNameNoCountryCode}',
      readOnly: true,
      icon: IconButton(
          onPressed: () {
            ref.read(countryControllerProvider.notifier).selectCountry(context);
          },
          icon: const Icon(Icons.location_on_outlined)),
    );
  }
}
