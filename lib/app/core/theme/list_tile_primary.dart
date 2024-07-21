import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/theme/baseColor.dart';
import 'package:flutter_application_1/app/core/theme/shadow.dart';
import 'package:flutter_application_1/app/core/theme/text_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Widget listTilePrimary(
    WidgetRef ref, BuildContext context, String title, Widget trail) {
  return Padding(
    padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.005),
    child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02,
          vertical: MediaQuery.of(context).size.height * 0.02),
      decoration: BoxDecoration(
        color: BaseColor.threeElementWhite[0],
        boxShadow: [BaseBoxShadow.primary[0]],
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: BaseTextStyle.listItemTitleSS,
          ),
          Spacer(),
          trail
        ],
      ),
    ),
  );
}
