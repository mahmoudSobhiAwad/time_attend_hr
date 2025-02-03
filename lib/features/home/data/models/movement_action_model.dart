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
      labelName: "تسجيل الحضور",
      content: "08:00 صباحًا",
      backgroundColor: AppColors.lightGreen),
  MovementActionModel(
      iconPath: AppImages.arrowOut,
      labelName: "تسجيل الانصراف",
      content: "05:00 مساءً",
      backgroundColor: AppColors.lightRed),
  MovementActionModel(
      iconPath: AppImages.breakTimeIn,
      labelName: "دخول الاستراحة",
      content: "30 دقيقة",
      backgroundColor: AppColors.lightPurble),
  MovementActionModel(
      iconPath: AppImages.breakTimeOut,
      labelName: "الخروج من الاستراحة",
      content: "01:30 ظهرًا",
      backgroundColor: AppColors.lightYellow),
];
List<MovementActionModel> lastMovementItemStructureList = [
  MovementActionModel(
    iconPath: AppImages.datePickerIcon,
    labelName: "تاريخ اليوم",
    content: "الأحد، 4 فبراير 2025",
  ),
  MovementActionModel(
    iconPath: AppImages.loginTimeIcon,
    labelName: "وقت التسجيل",
    content: "08:00 صباحًا",
  ),
  MovementActionModel(
    iconPath: AppImages.arrowIn,
    labelName: "نوع الحركة الحالية",
    content: "تسجيل دخول",
  ),
];
