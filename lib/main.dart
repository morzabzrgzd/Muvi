import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvi/constants/app_routes.dart';
import 'package:muvi/pages/onboarding/onboarding_page.dart';
import 'package:muvi/pages/splash/splash_page.dart';
import 'package:muvi/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Muvi',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.darkTheme,
      initialRoute: AppRoutes.SPLASH_ROUTE,
      getPages: [
        GetPage(
          name: AppRoutes.SPLASH_ROUTE,
          page: () => const SplashPage(),
        ),
        GetPage(
          name: AppRoutes.ONBOARDING_ROUTE,
          page: () => const OnboardingPage(),
        ),
      ],
    );
  }
}
