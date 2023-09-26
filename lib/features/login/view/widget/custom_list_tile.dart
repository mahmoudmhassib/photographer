import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
class CustomListTile extends StatelessWidget {
 final  String textTitle;

 final String iconLeading;
 final Function() onTap;
final Color textColor;


  const CustomListTile({Key? key, required this.textTitle, required this.iconLeading, required this.onTap, required this.textColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(textTitle,style: TextStyle(color: textColor,fontSize: 20,fontWeight: FontWeight.w600),),
      leading: Image.asset(iconLeading,width: 30,height: 30,),
      trailing: const Icon(Icons.arrow_forward_ios_rounded,color: kColorAppBar,size: 20,),
    );
  }
}