// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:muvi/controllers/main/main_ctrl.dart';
import 'package:muvi/models/bnb/bnb_model.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mainCtrl = Get.put(MainController());
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.red,
          surfaceTintColor: Colors.black,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
                fontSize: 13.5,
                fontWeight: FontWeight.w500,
                // color: Color(0xff8A87A9),
                color: Colors.black),
          ),
        ),
        child: Obx(
          () => NavigationBar(
            elevation: 0,
            height: 65,
            onDestinationSelected: (value) {
              mainCtrl.changePage(value);
            },
            // surfaceTintColor: Colors.amber,
            indicatorColor: Colors.transparent,
            shadowColor: Colors.transparent,
            backgroundColor: const Color(0xff202123),
            // backgroundColor: colblu,

            selectedIndex: mainCtrl.selectedIndex.value,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            destinations: List.generate(
              bnblist.length,
              (index) => NavigationDestination(
                icon: SvgPicture.asset(
                  bnblist[index].svgIcon,
                  fit: BoxFit.scaleDown,
                  height: 23,
                  width: 23,
                  color: mainCtrl.selectedIndex.value == index
                      ? Colors.amber
                      : Colors.grey,
                ),
                label: '',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
