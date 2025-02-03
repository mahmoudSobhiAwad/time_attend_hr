import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:time_attend_hr/core/utils/theme/app_images.dart';
import 'package:time_attend_hr/core/utils/theme/app_size.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, this.size, this.topPadding, this.bottomPadding});

  final double? size;
  final double? topPadding;
  final double? bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding ?? AppSize.size60,
        bottom: bottomPadding ?? AppSize.size32,
      ),
      child: SvgPicture.asset(
        AppImages.appLogo,
        width: size ?? 40,
      ),
    );
  }
}
