import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';
import 'package:time_attend_hr/features/home/data/models/movement_action_model.dart';

class ActionMovementItem extends StatelessWidget {
  const ActionMovementItem({
    super.key,
    required this.model,
  });
  final MovementActionModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 4,
            children: [
              CircleAvatar(
                  backgroundColor: model.backgroundColor,
                  radius: 10,
                  child: SvgPicture.asset(model.iconPath)),
              Text(
                model.labelName,
                style: AppFontStyle.regular12(context),
              )
            ],
          ),
          Text(
            model.content,
            style: AppFontStyle.medium14(context)
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
