// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff0a0a0a),
    fontFamily: 'NotoSansDisplay',
    primaryColor: const Color(0xff018786),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff1a181a),
    ),
    textTheme: TextTheme(
      headline6: const TextStyle(color: Colors.white, fontSize: 20),
      bodyText1: TextStyle(color: Colors.grey.shade800),
      bodyText2: const TextStyle(color: Colors.white),
    ),
    // splashColor: Colors.grey.shade800,
    // highlightColor: Colors.grey.shade800,
    // hoverColor: Colors.grey.shade800,
    colorScheme: const ColorScheme.dark(
      secondary: Colors.black45,
      primary: Colors.white70,
    ),
    scrollbarTheme: ScrollbarThemeData(
      thickness: MaterialStateProperty.all(4),
      thumbColor: MaterialStateProperty.all(Colors.grey.shade800),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff1a181a),
      selectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
      ),
      unselectedItemColor: Colors.grey,
    ),
  );

// light mode
}
