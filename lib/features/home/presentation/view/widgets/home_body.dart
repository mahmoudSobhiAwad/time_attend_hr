import 'package:flutter/material.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';
import 'package:time_attend_hr/features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:time_attend_hr/features/home/presentation/view/widgets/last_movement_item.dart';
import 'package:time_attend_hr/features/home/presentation/view/widgets/movement_action_grid.dart';
import 'package:time_attend_hr/features/home/presentation/view/widgets/welcom_message_with_date.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // this part include app logo with spacer till profile avatar
          HomeAppBar(),
          // this part include welcome message with name of user and the date of day
          WelcomMessageWithDate(),
          //grid contain movement action type like (login with time,logout with time , break with time and the break end of duration)
          MovementActionGrid(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "آخر الحركات",
              style: AppFontStyle.medium14(context),
            ),
          ),
          // this list contain all last movements 
          Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 8),
                  itemBuilder: (context, index) {
                    return LastMovementItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 8,
                    );
                  },
                  itemCount: 12)),
        ],
      ),
    );
  }
}
