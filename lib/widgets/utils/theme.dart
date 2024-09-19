import 'package:chat_app/widgets/utils/app_style.dart';
import 'package:flutter/material.dart';

class ThemeSettings {
  // static const String darkTheme = 'dark';
  // static const String systemDefaultTheme = 'systemDefault';
  // static const String lightTheme = 'light';

  static ThemeData getTheme(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        return _darkTheme;
      case ThemeMode.light:
        return _lightTheme;
        case ThemeMode.system:
      default:
        return _systemDefaultTheme;
    }
  }

  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    // primaryColor: Styles.primaryColor,
    scaffoldBackgroundColor: Styles.getScaffoldBackgroundColor(Brightness.dark),

    textTheme: TextTheme(
      headlineLarge: Styles.headLineStyle1
          .copyWith(color: Styles.getTextColor(Brightness.dark)),
      headlineMedium: Styles.headLineStyle2
          .copyWith(color: Styles.getTextColor(Brightness.dark)),
      bodyLarge: Styles.headLineStyle3
          .copyWith(color: Styles.getTextColor(Brightness.dark)),
      bodyMedium: Styles.headLineStyle4
          .copyWith(color: Styles.getTextColor(Brightness.dark)),
    ),
  );

  static final ThemeData _systemDefaultTheme = ThemeData(
    brightness: Brightness.light,
    // primaryColor: Styles.primaryColor,
    scaffoldBackgroundColor:
        Styles.getScaffoldBackgroundColor(Brightness.light),

    textTheme: TextTheme(
      headlineLarge: Styles.headLineStyle1
          .copyWith(color: Styles.getTextColor(Brightness.light)),
      headlineMedium: Styles.headLineStyle2
          .copyWith(color: Styles.getTextColor(Brightness.light)),
      bodyLarge: Styles.headLineStyle3
          .copyWith(color: Styles.getTextColor(Brightness.light)),
      bodyMedium: Styles.headLineStyle4
          .copyWith(color: Styles.getTextColor(Brightness.light)),
    ),
  );

  static final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor:
        Styles.getScaffoldBackgroundColor(Brightness.light),
    textTheme: TextTheme(
      headlineLarge: Styles.headLineStyle1
          .copyWith(color: Styles.getTextColor(Brightness.light)),
      headlineMedium: Styles.headLineStyle2
          .copyWith(color: Styles.getTextColor(Brightness.light)),
      bodyLarge: Styles.headLineStyle3
          .copyWith(color: Styles.getTextColor(Brightness.light)),
      bodyMedium: Styles.headLineStyle4
          .copyWith(color: Styles.getTextColor(Brightness.light)),
    ),
  );
}
