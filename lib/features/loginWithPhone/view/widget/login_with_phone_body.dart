import 'package:flutter/material.dart';
import 'package:photographer/features/loginWithPhone/view/widget/phone_number_text_field.dart';

import '../../../../core/utils/constants.dart';
import '../../../../tab_screen.dart';
import '../../../home/view/home_view.dart';
import '../../../login/view/widget/logo_login.dart';
class LoginWithPhoneBody extends StatefulWidget {
  const LoginWithPhoneBody({Key? key}) : super(key: key);

  @override
  State<LoginWithPhoneBody> createState() => _LoginWithPhoneBodyState();
}

class _LoginWithPhoneBodyState extends State<LoginWithPhoneBody> {
  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      const  LogoLoginView(),
      const  SizedBox(
          height: 15,
        ),
        buildText('Sawarny',kColorAppBar,30,FontWeight.bold),
        Divider(color: kColorAppBar,thickness: 2,
          height: 20,
          endIndent: MediaQuery.of(context).size.width*.09,
          indent: MediaQuery.of(context).size.width*.09,),
        buildText('Sawarny is photographers Hub',Colors.black,15,FontWeight.normal),
       const SizedBox(
          height: 50,
        ),
        const PhoneNumberTextField(),
       const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const TabScreen()));
            });
          },
          child: Container(
            margin:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.1) ,
            height: 55,
            color: kColorAppBar,
            child:const Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,)),
          ),
        ),
      ],
    );
  }

  Text buildText(String text ,Color color,double fontSize,FontWeight fontWeight ) {
    return Text(text,style: TextStyle( color: color,
          fontSize: fontSize,
          fontWeight: fontWeight ,
    ),
      textAlign: TextAlign.center,);
  }
}


