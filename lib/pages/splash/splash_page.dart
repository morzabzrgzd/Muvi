import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:muvi/controllers/splash/splash_ctrl.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var splashCtrl = Get.put(SplashController());
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: SvgPicture.asset(
          'assets/icons/logo.svg',
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
