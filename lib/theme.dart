import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// //########################################################################################################

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}
// //########################################################################################################

var kPrimaryColor = Colors.red;
var kPrimaryWhite = Colors.white;
var kOffWhite = Colors.grey[50];
var kOffBlack = Colors.grey[850];
var kPrimaryBlack = Colors.grey[900];

final darkTheme = ThemeData(
    brightness: Brightness.dark,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kPrimaryWhite, foregroundColor: kPrimaryBlack),
    scaffoldBackgroundColor: kPrimaryBlack,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: ButtonThemeData(
        buttonColor: kPrimaryColor, textTheme: ButtonTextTheme.primary),
    appBarTheme: AppBarTheme(
        color: kPrimaryBlack,
        textTheme: textTheme("dark"),
        elevation: 0,
        iconTheme: iconThemeData("dark")),
    textTheme: TextTheme(
        bodyText2: GoogleFonts.aleo(
      color: kPrimaryWhite,
    )),
    inputDecorationTheme: inputDecorationTheme("dark"));

final lightTheme = ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kPrimaryBlack, foregroundColor: kPrimaryWhite),
    scaffoldBackgroundColor: kPrimaryWhite,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: ButtonThemeData(
        buttonColor: kPrimaryColor, textTheme: ButtonTextTheme.primary),
    appBarTheme: AppBarTheme(
        color: kPrimaryWhite,
        textTheme: textTheme("light"),
        elevation: 0,
        iconTheme: iconThemeData("light")),
    textTheme: TextTheme(
        bodyText2: GoogleFonts.aleo(
      color: kPrimaryBlack,
    )),
    inputDecorationTheme: inputDecorationTheme("light"));

InputDecorationTheme inputDecorationTheme(mode) {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide:
          BorderSide(color: mode != "dark" ? kPrimaryBlack : kPrimaryWhite));

  return InputDecorationTheme(
      labelStyle: TextStyle(
        color: mode == "dark" ? kPrimaryWhite : kPrimaryBlack,
      ),
      hintStyle: TextStyle(
        color: mode == "dark" ? kPrimaryWhite : kPrimaryBlack,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
      enabledBorder: outlineInputBorder,
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder);
}

// //########################################################################################################

IconThemeData iconThemeData(mode) {
  return IconThemeData(color: mode == "dark" ? kPrimaryWhite : kPrimaryBlack);
}

// //########################################################################################################

TextTheme textTheme(mode) {
  return TextTheme(
    headline6:
        TextStyle(color: mode == "dark" ? kOffWhite : kOffBlack, fontSize: 15),
  );
}

//########################################################################################################
