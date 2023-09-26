import 'package:flutter/material.dart';
import 'package:photographer/features/registration/view/widget/price_range_row.dart';

import '../../../widgets/custom_text_field.dart';

class RegisterTextFieldPrev extends StatelessWidget {

  const RegisterTextFieldPrev({super.key,});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:  [
          CustomTextField(
          text: 'Name',
          edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
         CustomTextField(
          text: 'Nick Name',
          edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
         CustomTextField(
          text: 'Age',
          textInputType: TextInputType.number,
          edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
          PriceRangeRow(),
         CustomTextField(
          text: 'Email', edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
          CustomTextField(
          text: 'Phone Number',
          textInputType: TextInputType.number, edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ],
    );
  }
}
