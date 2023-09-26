import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class LogoLoginView extends StatelessWidget {
  const LogoLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .3,
          right: MediaQuery.of(context).size.width * .3),
      child: Image.asset(
        AssetsData.loginLogo,
        fit: BoxFit.fill,
        height: 100,
      ),
    );
  }
}
