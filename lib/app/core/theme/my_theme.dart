import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData themeDataLigth() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue.shade300),
      buttonTheme: ButtonThemeData(buttonColor: Colors.blue.shade300),
      primaryColor: Colors.blue.shade300,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blue.shade300,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue.shade300),
        ),
      ),
      appBarTheme: AppBarTheme(color: Colors.blue.shade300),
    );
  }

  ThemeData themeDataPersonal({
    Color icons = Colors.blue,
    Color buttons = Colors.blue,
    Color primary = Colors.blue,
    Color floatingActionButton = Colors.blue,
    Color elevatedButton = Colors.blue,
    Color appBarTheme = Colors.blue,
    Color? principal,
  }) {
    return ThemeData(
      iconTheme: IconThemeData(color: principal ?? icons),
      buttonTheme: ButtonThemeData(buttonColor: principal ?? buttons),
      primaryColor: principal ?? primary,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: principal ?? floatingActionButton,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(principal ?? elevatedButton),
        ),
      ),
      appBarTheme: AppBarTheme(color: principal ?? appBarTheme),
    );
  }
}
