import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_images.dart';

class MovementActionModel {
  String iconPath;
  String labelName;
  String content;
  Color? backgroundColor;
  MovementActionModel(
      {required this.iconPath,
      this.backgroundColor,
      required this.labelName,
      required this.content});
}

List<MovementActionModel> movementActionList = [
  MovementActionModel(
      iconPath: AppImages.arrowIn,
      labelName: "login_attendance",
      content: "08:00 ${"morning_time".tr()}",
      backgroundColor: AppColors.lightGreen),
  MovementActionModel(
      iconPath: AppImages.arrowOut,
      labelName: "logout_attendance",
      content: "05:00 ${"evening_time".tr()}",
      backgroundColor: AppColors.lightRed),
  MovementActionModel(
      iconPath: AppImages.breakTimeIn,
      labelName: "break_in",
      content: "30 ${"time_in_minutes_more".tr()}",
      backgroundColor: AppColors.lightPurble),
  MovementActionModel(
      iconPath: AppImages.breakTimeOut,
      labelName: "break_out",
      content: "01:30 ${"afternoon_time".tr()}",
      backgroundColor: AppColors.lightYellow),
];
List<MovementActionModel> lastMovementItemStructureList = [
  MovementActionModel(
    iconPath: AppImages.datePickerIcon,
    labelName: "date_of_day",
    content: "الأحد، 4 فبراير 2025",
  ),
  MovementActionModel(
    iconPath: AppImages.loginTimeIcon,
    labelName: "login_time",
    content: "08:00 ${"morning_time".tr()}",
  ),
  MovementActionModel(
    iconPath: AppImages.arrowIn,
    labelName: "movement_type",
    content: "login_movement".tr(),
  ),
];
