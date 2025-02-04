import 'package:flutter/material.dart';

double getResponiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * baseFontSize;
  double minWidth = 0.8 * baseFontSize;
  double maxWidth = 1.75 * baseFontSize;
  return responsiveFontSize.clamp(minWidth, maxWidth);
}

double getScaleFactor(BuildContext context) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < 500) {
    return screenWidth / 400;
  }  else {
    return screenWidth;
  }
}
