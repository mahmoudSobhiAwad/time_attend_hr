import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/constants/var_constants.dart';
import 'package:time_attend_hr/core/utils/functions/get_responsive_font_size.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';

abstract class AppFontStyle {
  static TextStyle regualr8(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 8),
        fontWeight: FontWeight.w400,
        color: AppColors.steelGray,
      );

  static TextStyle medium10(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 10),
        fontWeight: FontWeight.w500,
        color: AppColors.charcoalGray,
      );
  static TextStyle medium14(BuildContext context) => TextStyle(
      fontFamily: fontFamily,
      fontSize: getResponiveFontSize(context, baseFontSize: 14),
      fontWeight: FontWeight.w500,
      color: AppColors.titleColor);

  static TextStyle semiBold16(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w600,
        color: AppColors.titleColor,
      );

  static TextStyle regular12(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 12),
        fontWeight: FontWeight.w400,
        color: AppColors.steelGray,
      );
  static TextStyle regular14(BuildContext context) => TextStyle(
        fontFamily: fontFamily,
        fontSize: getResponiveFontSize(context, baseFontSize: 14),
        fontWeight: FontWeight.w400,
        color: AppColors.subTitleColor,
      );
}
