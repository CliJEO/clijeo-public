import 'package:flutter/material.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;

  SizeConfig(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
  }

  double SafeBlockSizeHorizontal(double scale) {
    double safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    return (_mediaQueryData.size.width - safeAreaHorizontal) * scale;
  }

  double SafeBlockSizeVertical(double scale) {
    double safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    return (_mediaQueryData.size.height - safeAreaVertical) * scale;
  }
}
