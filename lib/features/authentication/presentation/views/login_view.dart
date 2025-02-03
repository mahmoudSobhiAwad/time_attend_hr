import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:time_attend_hr/core/utils/constants/app_strings.dart';
import 'package:time_attend_hr/core/utils/theme/app_size.dart';
import 'package:time_attend_hr/core/widgets/custom_elevated_button.dart';
import 'package:time_attend_hr/core/widgets/logo_widget.dart';
import 'package:time_attend_hr/features/authentication/presentation/widgets/login_texts_fields_section.dart';
import 'package:time_attend_hr/features/authentication/presentation/widgets/title_and_subtitle.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.size20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoWidget(),
                TitleAndSubtitle(
                  title: AppStrings.loginTitle,
                  subtitle: AppStrings.loginSubtitle,
                ),
                LoginTextsFieldsSection(),
                const Gap(AppSize.size24),
                CustomElevatedButton(
                  title: AppStrings.login,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
