import 'package:flutter/material.dart';
import 'package:photographer/core/utils/colors.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/styles.dart';
class TitleLoginView extends StatelessWidget {
  const TitleLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Sawarny',style: Styles.titleLogin,),
        SizedBox(
          height: 15,
        ),
        Text('Discover, Books, Get Your Photo Session',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 17),),
        SizedBox(
          height: 20,
        ),
        Text('Login With',style: TextStyle(color: ColorsData.b,fontWeight: FontWeight.bold,fontSize: 25),),
      ],
    );
  }
}