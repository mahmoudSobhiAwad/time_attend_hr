import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:time_attend_hr/core/utils/theme/app_colors.dart';
import 'package:time_attend_hr/core/utils/theme/app_font_stlyles.dart';
import 'package:time_attend_hr/core/utils/theme/app_images.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      if (context.locale.languageCode == 'en') {
                        context.setLocale(Locale("ar"));
                      } else {
                        context.setLocale(Locale("en"));
                      }
                    },
                    icon: Icon(Icons.translate)),
                Image.asset(AppImages.onboarding),
                Column(
                  children: [
                    Text("first_screen_welcome".tr(),
                        style: AppFontStyle.font18BlackSemiBold(context)
                            .copyWith(height: 2.2)),
                    Text.rich(
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 1.9),
                        TextSpan(
                          text: "first_screen_first_time".tr(),
                          style: AppFontStyle.font14GrayRegular(context),
                          children: [
                            TextSpan(
                                text: "first_screen_fingerprint".tr(),
                                style:
                                    AppFontStyle.font14PrimaryRegular(context)),
                            TextSpan(
                                text: "first_screen_start_day".tr(),
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
          ),
        ));
  }
}
