import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/constants/text_field_borders.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';
import 'package:time_attend_hr/core/utils/theme/app_size.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.validator,
    required this.title,
    this.suffixIcon,
    required this.hintText,
    this.maxLength,
    this.textInputType,
    this.obscureText = false,
    this.prefixIcon,
    this.paddingForTop,
    this.paddingForBottom,
    this.maxLines,
    this.readOnly = false,
    this.onTapOutsideUnFocus = true,
    this.onTap,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final String title;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String hintText;
  final int? maxLength;
  final TextInputType? textInputType;
  final bool obscureText;
  final double? paddingForTop;
  final double? paddingForBottom;
  final int? maxLines;
  final bool? onTapOutsideUnFocus;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFontStyle.medium14(context).copyWith(
            color: AppColors.titleColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: paddingForTop ?? AppSize.size5,
            bottom: paddingForBottom ?? AppSize.size16,
          ),
          child: TextFormField(
            readOnly: readOnly,
            // onTapOutside: (value) {
            //   if (onTapOutsideUnFocus!) {
            //     FocusScope.of(context).unfocus();
            //   }
            // },
            style: AppFontStyle.medium14(context).copyWith(
              color: AppColors.steelGray,
            ),
            maxLines: maxLines ?? 1,
            controller: controller,
            keyboardType: textInputType,
            maxLength: maxLength,
            obscureText: obscureText,
            validator: validator,
            onTap: onTap,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              filled: true,
              hintStyle: AppFontStyle.medium14(context).copyWith(
                color: AppColors.steelGray,
              ),
              fillColor: AppColors.white,
              border: TextFieldBorders.enabledBorder,
              enabledBorder: TextFieldBorders.enabledBorder,
              focusedBorder: TextFieldBorders.focusedBorder,
            ),
          ),
        ),
      ],
    );
  }
}
