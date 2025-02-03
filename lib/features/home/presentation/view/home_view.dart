import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_images.dart';
import 'package:time_attend_hr/features/home/presentation/view/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.scaffoldBackGroundColor,
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.fingerPrintBackGroundColor,
            onPressed: null,
            child: SvgPicture.asset(AppImages.fingerPrintIcon),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: HomeBody()),
    );
  }
}
