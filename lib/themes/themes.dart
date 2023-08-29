import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff202123),
    fontFamily: 'Nunito',
    primaryColor: const Color(0xff018786),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff202123),
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    useMaterial3: true,
    textTheme: const TextTheme(
      // titleLarge: const TextStyle(color: Colors.white, fontSize: 20),
      // bodyLarge: TextStyle(color: Colors.grey.shade800),
      // bodyMedium: const TextStyle(color: Colors.white),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w300,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        // fontWeight: FontWeight.w600,
        fontSize: 16,
      ),

      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: Color(0xff202123),
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        alignment: Alignment.center,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: const Color(0xffFFD130),
        fixedSize: const Size.fromHeight(42),
      ),
    ),
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
