import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
 
    primarySwatch: Colors.blue,
    primaryColor: Colors.blueAccent,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.orangeAccent,
    ),
    

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueGrey,
      foregroundColor: Colors.white,
    ),
    

    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blueAccent,
      textTheme: ButtonTextTheme.primary,
    ),
    

    

    iconTheme: const IconThemeData(
      color: Colors.blueAccent,
    ),
    

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blueAccent,
    ),
    

    dialogTheme: const DialogTheme(
      titleTextStyle: TextStyle(color: Colors.blueGrey, fontSize: 18),
    ),
  );
}
