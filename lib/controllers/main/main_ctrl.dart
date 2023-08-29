import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muvi/pages/home/home_page.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 0.obs;

  changePage(value) {
    selectedIndex.value = value;
  }

  List pages = [
    const HomePage(),
    Container(color: Colors.red),
    Container(color: Colors.brown),
    Container(color: Colors.green),
  ];
}
