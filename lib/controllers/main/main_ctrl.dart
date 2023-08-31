import 'package:get/get.dart';
import 'package:muvi/pages/folder/folder_page.dart';
import 'package:muvi/pages/home/home_page.dart';
import 'package:muvi/pages/more/more_page.dart';
import 'package:muvi/pages/search/search_page.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;

  changePage(value) {
    selectedIndex.value = value;
  }

  List pages = [
    const HomePage(),
    const SearchPage(),
    const FolderPage(),
    const MorePage(),
  ];
}
