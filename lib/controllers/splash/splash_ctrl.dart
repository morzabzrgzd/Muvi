import 'package:get/get.dart';
import 'package:muvi/constants/app_routes.dart';

class SplashController extends GetxController {
  splashHandle() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.offAllNamed(AppRoutes.ONBOARDING_ROUTE);
    });
  }

  @override
  void onInit() {
    splashHandle();
    super.onInit();
  }
}
