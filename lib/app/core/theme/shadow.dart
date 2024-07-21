import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/theme/baseColor.dart';

abstract class BaseBoxShadow {
  /// primary.
  static const List<BoxShadow> primary = [
    BoxShadow(
      color: BaseColor.shadow,
      offset: Offset(0, 4),
      blurRadius: 3,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: BaseColor.shadow,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
    ),
  ];

  /// button.
  static const List<BoxShadow> button = [
    BoxShadow(
      color: BaseColor.shadowPrimary40,
      offset: Offset(0, 4),
      blurRadius: 13,
      spreadRadius: 1,
    ),
    BoxShadow(
      color: BaseColor.shadowPrimary40,
      offset: Offset(0, 1),
      blurRadius: 3,
      spreadRadius: 0,
    ),
  ];

  /// textInput.
  static const List<BoxShadow> textInput = [
    BoxShadow(
      color: BaseColor.shadowDark15,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: BaseColor.shadow,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
    ),
  ];

  /// BoxShadow -> ToolTip.
  static const List<BoxShadow> tooltipPrimary = [
    BoxShadow(
      color: BaseColor.shadow,
      offset: Offset(0, 2),
      blurRadius: 13,
      spreadRadius: 4,
    ),
    BoxShadow(
      color: BaseColor.shadow,
      offset: Offset(0, 4),
      blurRadius: 13,
      spreadRadius: 2,
    ),
  ];
}
