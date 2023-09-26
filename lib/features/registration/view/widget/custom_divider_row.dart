import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class CustomCenterRow extends StatelessWidget {
  final Color? color;
  const CustomCenterRow({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .07,
            right: MediaQuery.of(context).size.width * .02,
          ),
          width: MediaQuery.of(context).size.width * .26,
          height: 1,
          color: color,
        ),
     const   Text(
          'Registration with',
          style: Styles.hintTextField,
        ),
        Container(
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .02,
            right: MediaQuery.of(context).size.width * .04,
          ),
          width: MediaQuery.of(context).size.width * .26,
          height: 1,
          color: color,
        ),
      ],
    );
  }
}
