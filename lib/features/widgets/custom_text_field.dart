import 'package:flutter/material.dart';

import '../../core/utils/constants.dart';
import '../../core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.text,
      this.textInputType,
      this.child,
      required this.edgeInsets});

  final String? text;
  final TextInputType? textInputType;
  final Widget? child;
  final EdgeInsets edgeInsets;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .025,
        right: MediaQuery.of(context).size.width * .025,
        top: 5,
        bottom: 10,
      ),
      child: TextField(
        key: formKey,
        keyboardType: textInputType == TextInputType.number
            ? TextInputType.number
            : TextInputType.name,
        onChanged: (_) {},
        decoration: InputDecoration(
          enabled: true,
          focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: kColorAppBar, width: 1.5),
          ) ,
          border:const OutlineInputBorder(
            borderSide: BorderSide(color: kBorderTextFieldColor, width: 1.5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kBorderTextFieldColor, width: 1.5),
          ),
          suffixIcon: child,
          hintText: text,
          hintStyle: Styles.hintTextField,
          contentPadding: edgeInsets,
          isDense: true,
        ),
      ),
    );
  }
}
