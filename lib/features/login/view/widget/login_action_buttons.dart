import 'package:flutter/material.dart';
import 'package:photographer/core/utils/colors.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/icons.dart';
import '../../../loginWithPhone/view/login_with_phone_view.dart';
import '../../../widgets/custom_button.dart';

class LoginActionButtons extends StatefulWidget {
  const LoginActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginActionButtons> createState() => _LoginActionButtonsState();
}

class _LoginActionButtonsState extends State<LoginActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          backgroundColor: kColorAppBar,
          textColor: ColorsData.b,
          iconData: IconsData.email,
          textButton: 'Email',
          onTap: () {},
          width: 250,
          height: 60,
          edgeInsetsPadding: const EdgeInsets.only(right: 50),
          borderRadiusCircle: BorderRadius.circular(50),
        ),
        CustomButton(
          backgroundColor: Colors.black54,
          textColor: Colors.white,
          iconData: IconsData.telephone,
          textButton: 'Phone',
          onTap: () {
            setState(() {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const LoginWithPhoneView()));
            });
          },
          width: 250,
          height: 60,
          edgeInsetsPadding: const EdgeInsets.only(right: 50),
          borderRadiusCircle: BorderRadius.circular(50),
        ),
        CustomButton(
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconData: IconsData.google,
          textButton: 'Gmail',
          onTap: () {},
          width: 250,
          height: 60,
          edgeInsetsPadding: const EdgeInsets.only(right: 50),
          borderRadiusCircle: BorderRadius.circular(50),
        ),
      ],
    );
  }
}
