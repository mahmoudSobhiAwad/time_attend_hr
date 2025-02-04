import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';

class WelcomMessageWithDate extends StatelessWidget {
  const WelcomMessageWithDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Text(
            "welcom_message".tr(),
            style: AppFontStyle.semiBold16(context),
          ),
          Text(
            "الأحد، 4 فبراير 2025",
            style: AppFontStyle.regular14(context),
          ),
        ],
      ),
    );
  }
}
