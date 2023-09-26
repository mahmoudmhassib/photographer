import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/icons.dart';
import '../../../widgets/custom_button.dart';

class ButtonActions extends StatelessWidget {
  const ButtonActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(
          backgroundColor: kColorAppBar,
          textColor: Colors.black,
          iconData: IconsData.email,
          textButton: 'Email',
          onTap: () {},
          width: 150,
          height: 50,
          edgeInsetsPadding: const EdgeInsets.only(right: 30),
          borderRadiusCircle: BorderRadius.circular(23),
        ),
        CustomButton(
          backgroundColor: Colors.black45,
          textColor: Colors.white,
          iconData: IconsData.telephone,
          textButton: 'Phone',
          onTap: () {},
          width: 150,
          height: 50,
          edgeInsetsPadding: const EdgeInsets.only(right: 30),
          borderRadiusCircle: BorderRadius.circular(23),
        ),
      ],
    );
  }
}
