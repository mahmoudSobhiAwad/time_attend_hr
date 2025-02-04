import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';
import 'package:time_attend_hr/features/home/data/models/movement_action_model.dart';

class SinglePartInLastMovementItem extends StatelessWidget {
  const SinglePartInLastMovementItem({
    super.key,
    required this.model,
  });
  final MovementActionModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 4,
          children: [
            SvgPicture.asset(model.iconPath),
            Flexible(
              child: Text(
                model.labelName.tr(),
                style: AppFontStyle.regualr8(context),
              ),
            ),
          ],
        ),
        Text(
          model.content,
          style: AppFontStyle.medium10(context)
              .copyWith(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
