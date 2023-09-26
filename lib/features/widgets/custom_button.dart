import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String iconData;
  final String textButton;
  final Function() onTap;
  final double width;
  final double height;
  final EdgeInsets edgeInsetsPadding;
  final BorderRadius borderRadiusCircle;

  const CustomButton(
      {Key? key,
      required this.backgroundColor,
      required this.textColor,
      required this.iconData,
      required this.textButton,
      required this.onTap,
      required this.width,
      required this.height,
      required this.edgeInsetsPadding,
      required this.borderRadiusCircle,
   })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.only(
          top: 20,
        ),
        padding: edgeInsetsPadding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadiusCircle,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    iconData,
                  )),
              Text(
                textButton,
                style: TextStyle(color: textColor, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
