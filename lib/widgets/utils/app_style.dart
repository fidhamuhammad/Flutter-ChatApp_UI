import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Color darkPrimary = Color(0xff1B202D);
Color lightPrimary = Color(0xFFFFFFFF);
Color darkConatiner = Color(0xff1B202D).withOpacity(0.5);
Color lightContainer = Color.fromARGB(255, 175, 173, 173).withOpacity(0.5);
// Color backgroundScaffoldColorLight = Color.fromARGB(255, 60, 76, 202);
// Color backgroundScaffoldColorDark = Color(0xff1B202D);

class Styles {
  static Color primaryColor = darkPrimary;
  static Color darkTextColor = const Color(0xFFFFFFFF);
  static Color lightTextColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color containerLight = lightContainer;
  static Color containerDark = darkConatiner;
  static Color scaffoldBackgroundColorLight = lightPrimary;
  static Color scaffoldBackgroundColorDark = darkPrimary;

  static TextStyle textStyle = TextStyle(
      fontSize: 16, color: lightTextColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(
      fontSize: 28,
      color: lightTextColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Quicksand');
  static TextStyle headLineStyle2 = TextStyle(
      fontSize: 20,
      color: lightTextColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Quicksand');
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17, color: lightTextColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.bold);

  // Method to get text color based on theme brightness
  static Color getTextColor(Brightness brightness) {
    return brightness == Brightness.dark ? darkTextColor : lightTextColor;
  }

  // Function to get container color based on brightness
  static Color getContainerColor(Brightness brightness) {
    return brightness == Brightness.dark ? containerDark : containerLight;
  }

  static Color getScaffoldBackgroundColor(Brightness brightness) {
    return brightness == Brightness.dark
        ? scaffoldBackgroundColorDark
        : scaffoldBackgroundColorLight;
  }
}
