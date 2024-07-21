import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/app/core/theme/baseColor.dart';
import 'package:flutter_application_1/app/core/theme/text_styles.dart';
import 'package:flutter_application_1/app/core/theme/toolTip.dart';

Widget primaryTextFields(
  String lable,
  TextEditingController controller,
  List<TextInputFormatter>? inputFormatters,
  String? Function(String?)? validator,
  TextInputType textInputType,
  String hint, {
  Widget? suffix,
  bool checkTooltip = false,
  bool? obscure,
  Widget? prefix,
  String? Function(String?)? onchanged,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      bottom: 10,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              lable,
              style: BaseTextStyle.textInputLabel,
            ),
            Spacer(),
            checkTooltip == true
                ? TooltipPrimary(
                    tooltipText:
                        "Your password must include an\nuppercase, lowercase and number,\nwith a minimum of 8 characters",
                    child: const Icon(
                      Icons.help_outline_outlined,
                      size: 18,
                      color: BaseColor.primary,
                    ),
                  )
                : SizedBox()
          ],
        ),
        TextFormField(
          obscureText: obscure ?? false,
          controller: controller,
          keyboardType: textInputType,
          textInputAction: TextInputAction.done,
          inputFormatters: inputFormatters,
          validator: validator,
          onChanged: onchanged,
          decoration: InputDecoration(
            suffix: suffix,
            errorStyle: BaseTextStyle.textInputValidationError,
            prefix: prefix,
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            hintStyle: BaseTextStyle.textInputPlaceholder,
            contentPadding: const EdgeInsets.only(left: 16.0, top: 8.0),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    ),
  );
}
