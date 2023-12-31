import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/common/nutrition_detail_type.dart';
import 'package:nutritrion/app/common/text_form_field_type.dart';
import 'package:nutritrion/app/core/application/dio_ai_chatbot_instance_provider.dart';
import 'package:nutritrion/app/core/data/models/country_local.dart';
import 'package:nutritrion/app/features/ai_chatbot/data/data_source/ai_chatbot_data_source_provider.dart';
import 'package:nutritrion/app/features/menu_suggestion/data/models/menu_suggestion_model.dart';
import 'package:nutritrion/app/features/menu_suggestion/presentation/controller/ai_menu_suggestion_controller.dart';
import 'package:nutritrion/app/features/meal_management/presentation/controller/limit_nutrition_details_of_day_provider.dart';
import 'package:nutritrion/app/features/user_management/domain/user_entity.dart';
import 'package:nutritrion/app/features/user_management/presentation/controller/user_information_controller.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_activity_level/activity_level_controller.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_activity_level/select_activity_level.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_birth_day/birth_day_controller.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_birth_day/select_birth_day.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_country/country_controller.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_country/select_country.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_sex/select_sex.dart';
import 'package:nutritrion/app/features/user_management/presentation/widget/select_sex/sex_controller.dart';
import 'package:nutritrion/app/shared/widget/async_value_widget/async_value_widget.dart';
import 'package:nutritrion/app/shared/widget/common_button.dart';
import 'package:nutritrion/app/shared/widget/common_text_filed.dart';

class UserInformationForm extends ConsumerStatefulWidget {
  const UserInformationForm({super.key});

  @override
  ConsumerState<UserInformationForm> createState() => _UserInformationFormState();
}

class _UserInformationFormState extends ConsumerState<UserInformationForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ref.watch(userInformationControllerProvider).when(
        data: (data) {
          final currentUser = ref.watch(userInformationControllerProvider).value;
          final nameTextFieldController =
              TextEditingController(text: (currentUser == null) ? null : currentUser.fullName);
          final heightTextFieldController = TextEditingController(
              text: (currentUser == null) ? null : currentUser.height.toString());
          final weightTextFieldController = TextEditingController(
              text: (currentUser == null) ? null : currentUser.weight.toString());
          final completeWeeksTargetTextFieldController = TextEditingController(
              text: (currentUser == null) ? null : currentUser.completeWeeksTarget.toString());
          final weightTargetTextFieldController = TextEditingController(
              text: (currentUser == null) ? null : currentUser.weightTarget.toString());
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CommonTextField(
                      title: 'Name',
                      textEditingController: nameTextFieldController,
                      hintText: 'Enter your name',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Expanded(child: SelectSex()),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(child: SelectBirthDay()),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CommonTextField(
                          textEditingController: heightTextFieldController,
                          title: 'Height (cm)',
                          hintText: 'Your height',
                          icon: const Icon(Icons.height),
                          isNumType: true,
                          formType: TextFormFieldType.double,
                        )),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: CommonTextField(
                          textEditingController: weightTextFieldController,
                          title: 'Weight (kg)',
                          hintText: 'Your weight',
                          icon: const Icon(Icons.line_weight),
                          isNumType: true,
                          formType: TextFormFieldType.double,
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SelectActivityLevel(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CommonTextField(
                          textEditingController: completeWeeksTargetTextFieldController,
                          title: 'Target Time (week)',
                          hintText: 'Your target',
                          icon: const Icon(Icons.timer_sharp),
                          isNumType: true,
                          formType: TextFormFieldType.int,
                        )),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: CommonTextField(
                          textEditingController: weightTargetTextFieldController,
                          title: 'Target weight (kg)',
                          hintText: 'Your target',
                          icon: const Icon(Icons.timeline),
                          isNumType: true,
                          formType: TextFormFieldType.double,
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SelectCountry(),
                    const SizedBox(
                      height: 50,
                    ),
                    CommonButton(
                        function: () async {
                          final country = ref.watch(countryControllerProvider);
                          if (_formKey.currentState!.validate() && country != null) {
                            double? height = double.tryParse(heightTextFieldController.text);
                            double? weight = double.tryParse(weightTextFieldController.text);
                            double? weightTarget =
                                double.tryParse(weightTargetTextFieldController.text);
                            int? weekTarget =
                                int.tryParse(completeWeeksTargetTextFieldController.text);

                            final currentUser = ref.watch(userInformationControllerProvider).value;

                            UserEntity userFromForm = UserEntity(
                                fullName: nameTextFieldController.text,
                                joinDate: (currentUser == null)
                                    ? DateTime.now().millisecondsSinceEpoch
                                    : currentUser.joinDate,
                                sex: ref.watch(sexControllerProvider).$1,
                                birthDay: ref.watch(birthDayControllerProvider),
                                height: height,
                                weight: weight,
                                activityLevel: ref.watch(activityLevelControllerProvider).$1,
                                completeWeeksTarget: weekTarget,
                                weightTarget: weightTarget,
                                startTimeTarget: DateTime.now(),
                                country: CountryLocal.fromCountryPicker(country));

                            await ref
                                .read(userInformationControllerProvider.notifier)
                                .saveUserInformation(userFromForm)
                                .then((value) {
                              nameTextFieldController.dispose();
                              heightTextFieldController.dispose();
                              weightTextFieldController.dispose();
                              completeWeeksTargetTextFieldController.dispose();
                              weightTargetTextFieldController.dispose();
                            }).then((value) => context.pushReplacement("/ai_menu_suggestion_page"));
                          }
                        },
                        text: "Save your information")
                  ],
                ),
              ),
            ),
          );
        },
        error: (e, st) => ErrorStateWidget(error: e.toString()),
        loading: () => const SizedBox());
  }
}
