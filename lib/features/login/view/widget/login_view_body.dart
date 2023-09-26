import 'package:flutter/material.dart';
import 'package:photographer/features/login/view/widget/title_login_view.dart';
import '../../../../core/provider/theme_notifier.dart';
import 'custom_login_row.dart';
import 'login_action_buttons.dart';
import 'package:provider/provider.dart';

import 'logo_login.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LogoLoginView(),
        SizedBox(
          height: 15,
        ),
        TitleLoginView(),
        SizedBox(
          height: 10,
        ),
        LoginActionButtons(),
        SizedBox(
          height: 30,
        ),
        CustomLoginRow(),
      ],
    );
  }
}
