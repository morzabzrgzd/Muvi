import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvi/constants/app_routes.dart';
import 'package:muvi/pages/home/home_page.dart';
import 'package:muvi/pages/login/login_page.dart';
import 'package:muvi/pages/main/main_page.dart';
import 'package:muvi/pages/onboarding/onboarding_page.dart';
import 'package:muvi/pages/register/register_page.dart';
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
        GetPage(
          name: AppRoutes.LOGIN_ROUTE,
          page: () => const LoginPage(),
        ),
        GetPage(
          name: AppRoutes.REGISTER_ROUTE,
          page: () => const RegisterPage(),
        ),
        GetPage(
          name: AppRoutes.MAIN_ROUTE,
          page: () => const MainPage(),
        ),
        GetPage(
          name: AppRoutes.HOME_ROUTE,
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
