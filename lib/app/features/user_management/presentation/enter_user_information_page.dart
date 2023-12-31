import 'package:flutter/material.dart';
import 'package:nutritrion/app/features/user_management/presentation/user_information_form.dart';

class EnterUserInformationPage extends StatefulWidget {
  const EnterUserInformationPage({super.key});

  @override
  State<EnterUserInformationPage> createState() => _EnterUserInformationPageState();
}

class _EnterUserInformationPageState extends State<EnterUserInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Information"),
      ),
      body: const UserInformationForm(),
    );
  }
}
