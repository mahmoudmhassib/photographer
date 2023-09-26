import 'package:flutter/material.dart';
import 'package:photographer/core/utils/icons.dart';
import 'package:photographer/features/registration/view/widget/register_textfield-prev.dart';
import '../../../../core/utils/styles.dart';
import '../../../widgets/custom_button.dart';
import 'button_action.dart';
import 'custom_divider_row.dart';
import 'custom_radio_listtile_column.dart';
import '../../../widgets/upload_photo.dart';
import 'choice_menu.dart';
import 'custom_textfield_column_view.dart';

class RegistrationViewBody extends StatelessWidget {
  const RegistrationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const UploadPhoto(),
          const RegisterTextFieldPrev(),
          const ChoiceMenu(),
          const CustomTextFieldView(),
          const Padding(
            padding: EdgeInsets.only(left: 12.0, top: 5, bottom: 5),
            child: Text(
              'Please select your gender',
              style: Styles.hintTextField,
            ),
          ),
          const RadioButtonWithTitle(),
          const CustomCenterRow(
            color: Colors.grey,
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
}
