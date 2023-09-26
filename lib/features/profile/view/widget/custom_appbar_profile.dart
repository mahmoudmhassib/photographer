import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class CustomAppBarProfile extends StatefulWidget {
  const CustomAppBarProfile({super.key});

  @override
  State<CustomAppBarProfile> createState() => _CustomAppBarProfileState();
}

class _CustomAppBarProfileState extends State<CustomAppBarProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 40,left: 10),
          child:context.locale=="ar"?Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,):Icon(Icons.arrow_back_ios_outlined ,color: Colors.white,),
        ),


        PopupMenuButton(
            padding:const EdgeInsets.only(top: 40),
            color: Colors.white,
            onSelected: (value){
              if(value==0){
                print('my account');
              }else if(value==1){
                print('Setting');
              }else if(value==2){
                print('Logout');
              }
            },
            itemBuilder:(ctx){
              return const [
                PopupMenuItem<int>(value: 0,child: Text('account')),
                PopupMenuItem<int>(value: 1,child: Text('Setting')),
                PopupMenuItem<int>(value: 2,child: Text('Logout')),
              ];

            }),
      ],
    );
  }
}