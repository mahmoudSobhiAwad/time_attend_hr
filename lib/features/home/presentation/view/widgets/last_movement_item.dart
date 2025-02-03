import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/features/home/data/models/movement_action_model.dart';
import 'package:time_attend_hr/features/home/presentation/view/widgets/single_parts_last_movement.dart';

class LastMovementItem extends StatelessWidget {
  const LastMovementItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.movementBackGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(lastMovementItemStructureList.length, (index) {
            return Expanded(
                // this item is dividable into three section (today date ,time to login and the current movement name or type)
                child: SinglePartInLastMovementItem(
              model: lastMovementItemStructureList[index],
            ));
          })
        ],
      ),
    );
  }
}
