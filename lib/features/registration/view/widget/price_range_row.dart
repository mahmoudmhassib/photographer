import 'package:flutter/material.dart';

import '../../../widgets/custom_text_field.dart';

class PriceRangeRow extends StatelessWidget {
  const PriceRangeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        Expanded(
          child: CustomTextField(
            text: 'Min Price',
            textInputType: TextInputType.number,
            edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
        ),
        Expanded(
          child: CustomTextField(
            text: 'Max Price',
            textInputType: TextInputType.number,
            edgeInsets: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
        ),
      ],
    );
  }
}
