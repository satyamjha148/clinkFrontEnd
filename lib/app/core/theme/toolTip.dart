import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/theme/shadow.dart';
import 'package:flutter_application_1/app/core/theme/text_styles.dart';
import 'package:flutter_application_1/app/core/theme/tooltiparrow.dart';

class TooltipPrimary extends StatelessWidget {
  final String tooltipText;
  final Duration showDuration;
  final TextStyle textStyle;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double verticalOffset;
  final bool preferBelow;
  final ShapeDecoration decoration;
  final TooltipTriggerMode triggerMode;
  final Widget child;

  const TooltipPrimary({
    Key? key,
    required this.tooltipText,
    this.showDuration = const Duration(seconds: 5),
    this.textStyle = BaseTextStyle.tooltipPrimary,
    this.margin = const EdgeInsets.symmetric(horizontal: 40),
    this.padding = const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
    this.verticalOffset = 10,
    this.preferBelow = false,
    this.decoration = const ShapeDecoration(
      /// Custom shape with downward arrow:
      shape: TooltipShapeArrow(),
      color: Colors.white, // Background color.
      shadows: BaseBoxShadow.tooltipPrimary,
    ),
    this.triggerMode = TooltipTriggerMode.tap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipText,

      showDuration: showDuration,

      textStyle: textStyle,

      margin: margin,
      padding: padding,

      /// The vertical gap between the widget and the displayed tooltip:
      verticalOffset: verticalOffset,

      /// Whether the tooltip display below the widget:
      preferBelow: false,

      /// Decoration specifies the tooltip's shape and background color:
      decoration: decoration,

      triggerMode: triggerMode,

      /// Main component, tapping on which will show the tooltip:
      child: child,
    );
  }
}
