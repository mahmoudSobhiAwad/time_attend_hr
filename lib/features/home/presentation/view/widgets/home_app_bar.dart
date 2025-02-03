import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_images.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppImages.appLogo),
          CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.avatarBackGround,
              child: SvgPicture.asset(AppImages.profileImage)),
        ],
      ),
    );
  }
}
