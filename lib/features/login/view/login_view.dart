import 'package:flutter/material.dart';
import 'package:photographer/features/login/view/widget/login_view_body.dart';

import '../../../core/utils/constants.dart';
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  kPrimaryColor,
      body: LoginViewBody(),
    );
  }
}
