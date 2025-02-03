import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';
import 'package:time_attend_hr/core/utils/theme/app_size.dart';


class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.titleColor,
    this.backgroundColors,
  });

  final VoidCallback? onPressed;
  final String title;
  final Color? titleColor, backgroundColors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(backgroundColors ?? AppColors.primary),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.size12),
            ),
          ),
          elevation: WidgetStateProperty.all(0),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppFontStyle.semiBold16(context).copyWith(
            color: titleColor??AppColors.white,
          ),
        ),
      ),
    );
  }
}
