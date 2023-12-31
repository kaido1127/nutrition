import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nutritrion/app/splash_page.dart';
class AILoadingStateWidget extends StatelessWidget {
  final String loadingText;
  const AILoadingStateWidget({super.key, required this.loadingText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: deviceSize.width * 0.3,
            height: deviceSize.width * 0.3,
            child: Lottie.asset('asset/lottie/ai_loading.json')),
        const SizedBox(height: 10,),
        Text(loadingText,style: const TextStyle(color: Colors.black54),)
      ],
    );
  }
}
