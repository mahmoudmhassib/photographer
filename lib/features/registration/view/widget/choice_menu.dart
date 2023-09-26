import 'package:flutter/material.dart';

import '../../../widgets/custom_text_field.dart';
import '../../../widgets/drop_down_menu.dart';
class ChoiceMenu extends StatelessWidget {
  const ChoiceMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        CustomTextField(

          edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: DropDownTextField(hintDropDown: 'Government', dropValue: ['Egypt','Yamn','Syria','US'],),
        ),
        CustomTextField(
          edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: DropDownTextField(hintDropDown: 'City', dropValue: ['Cairo','Giza','6 october','Alex'],),
        ),
      ],
    );
  }
}