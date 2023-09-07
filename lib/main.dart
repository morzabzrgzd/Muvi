import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvi/constants/app_routes.dart';
import 'package:muvi/pages/edit%20profile/edit_profile_page.dart';
import 'package:muvi/pages/help/help_page.dart';
import 'package:muvi/pages/home/home_page.dart';
import 'package:muvi/pages/login/login_page.dart';
import 'package:muvi/pages/made%20for%20you/made_for_you_page.dart';
import 'package:muvi/pages/main/main_page.dart';
import 'package:muvi/pages/onboarding/onboarding_page.dart';
import 'package:muvi/pages/popular%20movies/popular_movies_page.dart';
import 'package:muvi/pages/register/register_page.dart';
import 'package:muvi/pages/search/search_page.dart';
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
          name: AppRoutes.EDITPROFILE_ROUTE,
          page: () => const EditProfilePage(),
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
        GetPage(
          name: AppRoutes.SEARCH_ROUTE,
          page: () => const SearchPage(),
        ),
        GetPage(
          name: AppRoutes.HELP_ROUTE,
          page: () => const HelpPage(),
        ),
        GetPage(
          name: AppRoutes.MADEFORYOU_ROUTE,
          page: () => const MadeForYouPage(),
        ),
        GetPage(
          name: AppRoutes.POPULARMOVIES_ROUTE,
          page: () => const PopularMoviesPage(),
        ),
      ],
    );
  }
}
