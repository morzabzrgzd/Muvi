import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;

  changePage(value) {
    selectedIndex.value = value;
  }
}
