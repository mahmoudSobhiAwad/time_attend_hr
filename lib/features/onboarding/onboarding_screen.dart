import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';
import 'package:time_attend_hr/core/utils/theme/app_images.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SvgPicture.asset(AppImages.appLogo),
              ),
              Image.asset(AppImages.onboarding),
              Column(
                children: [
                  Text(" مرحبًا بك !👋",
                      textDirection: TextDirection.rtl,
                      style: AppFontStyle.font18BlackSemiBold(context)
                          .copyWith(height: 2.2)),
                  Text.rich(
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(height: 1.9),
                      TextSpan(
                        text: "قم بتسجيل أول حضور لك بالضغط على زر ",
                        style: AppFontStyle.font14GrayRegular(context),
                        children: [
                          TextSpan(
                              text: "البصمة",
                              style:
                                  AppFontStyle.font14PrimaryRegular(context)),
                          TextSpan(
                              text: " لبدء يومك بكل سهولة .",
                              style: AppFontStyle.font14GrayRegular(context)),
                        ],
                      )),
                ],
              ),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.primryColor,
                child: SvgPicture.asset(
                  AppImages.fingerPrint,
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
        ));
  }
}
