import 'package:flutter/material.dart';
import 'package:podowon_church_app/themes/color.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: PodowonColor.mainColor,
      brightness: Brightness.light,
    ),
    // appBarTheme: AppBarTheme(
    //   backgroundColor: PodowonColor.mainColor,
    //   foregroundColor: Colors.white, // 타이틀 색상
    // ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: PodowonColor.mainColor,
      unselectedItemColor: Colors.grey,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: PodowonColor.mainColor,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: PodowonColor.mainColor,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: PodowonColor.mainColor,
      unselectedItemColor: Colors.grey,
    ),
  );
}
