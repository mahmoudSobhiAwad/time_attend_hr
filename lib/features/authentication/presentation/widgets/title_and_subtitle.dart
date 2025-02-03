import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';
import 'package:time_attend_hr/core/utils/theme/app_size.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle(
      {super.key, required this.subtitle, required this.title});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppFontStyle.semiBold18Black(context),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: AppSize.size5,
            bottom: AppSize.size50,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppFontStyle.regualr14Grey(context),
          ),
        ),
      ],
    );
  }
}
