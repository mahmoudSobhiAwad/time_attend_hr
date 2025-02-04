import 'package:flutter/material.dart';
import 'package:time_attend_hr/features/home/data/models/movement_action_model.dart';
import 'package:time_attend_hr/features/home/presentation/view/widgets/action_movement_item.dart';

class MovementActionGrid extends StatelessWidget {
  const MovementActionGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        spacing: 8,
        children: [
          ...List.generate(
            (movementActionList.length / 2).ceil(), 
            (rowIndex) {
              int startIndex = rowIndex * 2;
              int endIndex = (startIndex + 2).clamp(0, movementActionList.length);
              return Row(
                spacing: 10,
                children: movementActionList.sublist(startIndex, endIndex).map((model) {
                  return Expanded(child: ActionMovementItem(model: model));
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
