import 'package:flutter/material.dart';
import 'package:photographer/features/splash/splash_view_body.dart';

import '../../core/utils/constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSplashColor,
      body: SplashViewBody(),
    );
  }
}
