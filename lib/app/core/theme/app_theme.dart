// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppTheme {
  /// for getting light theme
  ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(elevation: 5, color: Colors.white),
      checkboxTheme: CheckboxThemeData(
        overlayColor: MaterialStateProperty.all(
          Color(0xFFc1e963),
        ),
        checkColor: MaterialStateProperty.all(Colors.white),
      ),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(
        Color(0xFFc1e963),
      ))),
      primaryIconTheme: IconThemeData(
        color: Colors.black,
      ),
      actionIconTheme: ActionIconThemeData(),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      primaryColor: Color(0xFFc1e963),
    );
  }

  /// for getting dark theme
}

/// for providing app theme [AppTheme]
final appThemeProvider = Provider<AppTheme>((_) => AppTheme());
