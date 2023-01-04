import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  static String id = "Loading";
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Center(
          child: SpinKitRing(
        color: AppTheme.primaryColor,
        lineWidth: 5,
      )),
    );
  }
}
