import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/constants/var_constants.dart';
import 'package:time_attend_hr/core/utils/functions/get_responsive_font_size.dart';

abstract class AppFontStyle {
  static TextStyle regualr8(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 8),
        fontWeight: FontWeight.w400,
        color: const Color(0xff064061),
      );

  static TextStyle medium10(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 10),
        fontWeight: FontWeight.w500,
        color: const Color(0xff064061),
      );
  static TextStyle medium14(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 14),
        fontWeight: FontWeight.w500,
        color: const Color(0xff064061),
      );

  static TextStyle semiBold16(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w600,
        color: const Color(0xff064061),
      );



  static TextStyle regular12(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 12),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
      );


}
