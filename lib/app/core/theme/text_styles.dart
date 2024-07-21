import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/theme/baseColor.dart';

abstract class BaseTextStyle {
  static TextStyle appHeader = TextStyle(
      color: Color(0xFFff904c),
      fontSize: 18,
      fontFamily: 'Rubik',
      fontWeight: FontWeight.w800);

  static const TextStyle listItemTitleSS = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Colors.black,
  );

  static const TextStyle hyperLinkPrimarySemiBold = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: BaseColor.primary,
  );

  static const TextStyle blacks18w500 = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle blacks16w500 = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle appBarHeader = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: Colors.white,
    letterSpacing: 0,
  );

  static const TextStyle pinInput = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 21,
    color: BaseColor.textPrimary,
  );

  static const TextStyle pageTextPrimary = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: BaseColor.textPrimary,
  );

  static const TextStyle blacks12w400 = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Colors.black,
    height: 1.5,
  );

  static TextStyle searchText = TextStyle(
      color: Colors.black45,
      fontSize: 12,
      fontFamily: 'Rubik',
      fontWeight: FontWeight.w500);

  static const TextStyle textInputLabel = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Color(0xFF736561),
  );
  static const TextStyle primary14w700 = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: BaseColor.primary,
    height: 1.5,
  );
  static const TextStyle tooltipPrimary = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Colors.black,
    height: 1.6,
  );

  static const TextStyle textInputValidationError = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: BaseColor.textError,
    height: 1.0,
  );

  static const TextStyle textInputPlaceholder = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Color(0xFFCBC3C3),
    letterSpacing: -0.2,
  );

  static const TextStyle buttonPrimary = TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: BaseColor.textButtonPrimary,
  );
}
