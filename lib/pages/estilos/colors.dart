import 'package:flutter/material.dart';

class colors_app {
  static double minWidth = 5;
  static ThemeData get Theme {
    return ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(203, 9, 19, 13),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 183, 232, 255)),
        titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 255, 255, 255)),
        labelMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 246, 252, 255)),
      ),
      iconTheme: IconThemeData(
        size: 25,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor:
            WidgetStatePropertyAll(Color.fromARGB(125, 19, 23, 111)),
        alignment: Alignment.center,
        elevation: WidgetStatePropertyAll(4),
        animationDuration: Duration(seconds: 4),
        minimumSize: WidgetStatePropertyAll(Size(200, 50)),
        foregroundColor:
            WidgetStatePropertyAll(const Color.fromARGB(255, 255, 255, 255)),
        textStyle: WidgetStatePropertyAll(TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: const Color.fromARGB(255, 251, 251, 251))),
        shadowColor: WidgetStatePropertyAll(const Color.fromARGB(24, 27, 0, 0)),
        overlayColor: WidgetStatePropertyAll(const Color.fromARGB(
            120, 105, 240, 175)), //Color.fromARGB(149, 7, 8, 33)
      )),
      buttonTheme: ButtonThemeData(
        alignedDropdown: true,
        disabledColor: const Color.fromARGB(125, 255, 255, 255),
        textTheme: ButtonTextTheme.accent,
        height: 15,
        focusColor: Colors.deepOrangeAccent,
        buttonColor: Color.fromARGB(148, 154, 179, 29),
        splashColor: Color.fromARGB(255, 19, 3, 254),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(width: 1, color: Color.fromARGB(84, 26, 28, 73))),
      ),
      inputDecorationTheme: InputDecorationTheme(
        activeIndicatorBorder: BorderSide(width: 10),
        constraints: BoxConstraints(minWidth: 20),
        contentPadding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 25,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Color.fromARGB(193, 26, 28, 73)),
        ),
        filled: true,
        fillColor: Color.fromARGB(162, 7, 8, 28),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(193, 21, 5, 5),
        foregroundColor: Colors.lightBlueAccent,
        highlightElevation: 4,
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color.fromARGB(201, 28, 47, 49),
        onPrimary: Colors.lightBlueAccent,
        secondary: Color.fromARGB(201, 73, 91, 94),
        onSecondary: Color.fromARGB(198, 145, 189, 210),
        error: Color.fromARGB(198, 86, 84, 84),
        onError: Color.fromARGB(182, 248, 98, 98),
        surface: Color.fromARGB(203, 9, 19, 13),
        onSurface: Color.fromARGB(255, 64, 196, 255),
      ),
    );
  }
}
