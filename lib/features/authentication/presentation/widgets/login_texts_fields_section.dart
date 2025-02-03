import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:time_attend_hr/core/utils/constants/app_strings.dart';
import 'package:time_attend_hr/core/utils/theme/app_images.dart';
import 'package:time_attend_hr/core/widgets/custom_text_field.dart';
import 'package:time_attend_hr/features/authentication/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:time_attend_hr/features/authentication/presentation/cubits/login_cubit/login_states.dart';

class LoginTextsFieldsSection extends StatelessWidget {
  const LoginTextsFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(
      builder: (context, state) {
        return Form(
          key: LoginCubit.get(context).formKey,
          child: Column(
            children: [
              CustomTextField(
                textInputType: TextInputType.emailAddress,
                controller: LoginCubit.get(context).usernameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.pleaseEnterUsername;
                  }
                  return null;
                },
                title: AppStrings.username,
                hintText: AppStrings.enterUsername,
              ),
              CustomTextField(
                textInputType: TextInputType.visiblePassword,
                paddingForBottom: 0,
                obscureText: LoginCubit.get(context).isShowPassword,
                suffixIcon: SizedBox(
                  height: 30,
                  width: 30,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        LoginCubit.get(context).changePasswordVisibility();
                      },
                      child: SvgPicture.asset(
                        AppImages.hide,
                        height: 30,
                      ),
                    ),
                  ),
                ),
                controller: LoginCubit.get(context).passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.pleaseEnterPassword;
                  }
                  return null;
                },
                title: AppStrings.password,
                hintText: AppStrings.enterPassword,
              ),
            ],
          ),
        );
      },
    );
  }
}

class SvgIcon extends StatelessWidget {
  final String assetName;
  final double width;
  final double height;

  const SvgIcon({
    super.key,
    required this.assetName,
    this.width = 24.0,
    this.height = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
