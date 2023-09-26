import 'package:flutter/material.dart';
class CustomContainerSetting extends StatefulWidget {

final Widget child;
  const CustomContainerSetting({super.key, required this.child});

  @override
  State<CustomContainerSetting> createState() => _CustomContainerSettingState();
}

class _CustomContainerSettingState extends State<CustomContainerSetting> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * .02,
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05,

          ),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .04),
      height: MediaQuery.of(context).size.height * .08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow:const [
            BoxShadow(
            ),
          ]),
      child: Center(
        child:widget.child,

      ),
    );
  }
}
