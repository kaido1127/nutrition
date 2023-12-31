import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nutritrion/app/features/user_management/presentation/controller/user_information_controller.dart';

late Size deviceSize;

class SplashPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 5000), () async {
      deviceSize = MediaQuery.of(context).size;
      await ref.read(userInformationControllerProvider.notifier).userExist().then((value) {
        value ? context.go('/summary_page') : context.go('/enter_user_information_page');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Stack(
        children: [
          //Center(child:Image.asset('images/logo.jpg') ,),
          Positioned(
            top: mq.height * 0.20,
            right: mq.width * 0.35,
            child: SizedBox(
              width: mq.width*0.3,
              child: const Center(
                child: Text(
                  'Nutrition',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Positioned(
              top: mq.height * 0.30,
              //right: mq.width * 0.15,
              width: mq.width * 1,
              child: Lottie.asset('asset/lottie/splash_loading.json')),
          Positioned(
              bottom: mq.height * 0.1,
              width: mq.width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Love healthy food, Love yourself ',
                    style: TextStyle(color: Colors.black, fontSize: 16, letterSpacing: 0.5),
                    textAlign: TextAlign.center,
                  ),
                  Icon(Icons.favorite ,color: Colors.green,)
                ],
              ))
        ],
      ),
    ));
  }
}
