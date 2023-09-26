import 'package:flutter/material.dart';

import '../../../widgets/custom_text_field.dart';
class CustomTextFieldView extends StatelessWidget {
  const CustomTextFieldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        CustomTextField(
          text: 'District', edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        CustomTextField(
          text: 'Bio', edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        ),
        CustomTextField(
          text: 'Gears', edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        ),
      ],
    );
  }
}