import 'package:flutter/material.dart';
import 'package:time_attend_hr/features/home/data/models/movement_action_model.dart';
import 'package:time_attend_hr/features/home/presentation/view/widgets/action_movement_item.dart';

class MovementActionGrid extends StatelessWidget {
  const MovementActionGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 160,
      child: GridView.builder(
          itemCount: movementActionList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              childAspectRatio: 163.5 / 64,
              crossAxisSpacing: 8),
          itemBuilder: (context, index) {
            return ActionMovementItem(
              model: movementActionList[index],
            );
          }),
    );
  }
}
