import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_size.dart';

class TextFieldBorders {
   static final OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppSize.size12),
    borderSide: BorderSide(
      width: 1.1,
      color: AppColors.primary,
    ),
  );

  static final OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppSize.size12),
    borderSide: BorderSide(
      width: 1.1,
      color: AppColors.greyForBorder,
    ),
  );
}