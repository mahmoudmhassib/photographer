import 'package:flutter/material.dart';
import 'package:photographer/core/utils/constants.dart';
import '../../../core/utils/icons.dart';
import '../../../core/utils/styles.dart';
import '../../registration/view/widget/button_action.dart';
import '../../registration/view/widget/choice_menu.dart';
import '../../registration/view/widget/custom_divider_row.dart';
import '../../registration/view/widget/custom_radio_listtile_column.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/upload_photo.dart';

class ClientViewBody extends StatelessWidget {
  const ClientViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const UploadPhoto(),
          buildCustomTextField('Full Name'),
          buildCustomTextFieldNumber('Age'),
          buildCustomTextField('Email'),
          buildCustomTextFieldNumber('Phone Number'),
          const ChoiceMenu(),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, top: 5, bottom: 5),
            child: Text(
              'Please select your gender',
              style: Styles.hintTextField,
            ),
          ),
          const RadioButtonWithTitle(),
          const CustomCenterRow(
            color: kColorAppBar,
          ),
          const ButtonActions(),
          Padding(
            padding: const EdgeInsets.only(left: 125, right: 125, bottom: 20),
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              iconData: IconsData.google,
              textButton: 'Gmail',
              onTap: () {},
              width: 150,
              height: 50,
              edgeInsetsPadding: const EdgeInsets.only(right: 30),
              borderRadiusCircle: BorderRadius.circular(23),

            ),
          ),
        ],
      ),
    );
  }

  CustomTextField buildCustomTextFieldNumber(String hintText) {
    return CustomTextField(
      text: hintText,
      textInputType: TextInputType.number,
      edgeInsets: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    );
  }

  CustomTextField buildCustomTextField(String hintText) {
    return CustomTextField(
      text: hintText,
      edgeInsets: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    );
  }
}
