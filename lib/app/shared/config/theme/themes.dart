import 'package:flutter/material.dart';

darkTheme(context) {
  return ThemeData(
    iconTheme: IconThemeData(color: Colors.teal, size: 23),
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Colors.black,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Color(0xff1f2124),
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: Colors.white10,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
      ),
      headline2: TextStyle(
        fontSize: 20,
        color: Colors.white70,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontSize: 15,
        color: Colors.white.withOpacity(0.7),
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        color: Colors.black.withOpacity(0.7),
      ),
    ),
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.dark(),
        buttonColor: Colors.blue,
        splashColor: Colors.black),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: Colors.black38,
    ),
  );
}

lightTheme(context) {
  return ThemeData(
    iconTheme: IconThemeData(color: Colors.teal, size: 23),
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Color(0xff192D47),
    primaryColorDark: Colors.black,
    primaryColorLight: Colors.grey,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
      headline2: TextStyle(
        fontSize: 20,
        color: Colors.black54,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontSize: 15,
        color: Colors.black.withOpacity(0.7),
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        color: Colors.black.withOpacity(0.7),
      ),
    ),
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.light(),
          buttonColor: Colors.blue,
          splashColor: Colors.white,
        ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}

enum ThemeOption {
  darkTheme,
  lightTheme,
}
