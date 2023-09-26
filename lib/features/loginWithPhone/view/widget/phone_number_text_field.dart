import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import '../../../../core/utils/constants.dart';

//import 'package:easy_localization/easy_localization.dart';
class PhoneNumberTextField extends StatefulWidget {
  const PhoneNumberTextField({Key? key}) : super(key: key);

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  String? text = '';
  TextEditingController _controll = TextEditingController();

  @override
  void dispose() {
    _controll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .073),
      child: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .025,
          right: MediaQuery.of(context).size.width * .025,
          top: 5,
          bottom: 10,
        ),
        child: TextField(
          controller: _controll,
          key: formKey,
          keyboardType: TextInputType.number,
          onChanged: (value) {
            setState(() {
              text=value ;
            });
          },
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kBorderTextFieldColor, width: 1.5),
            ),
            prefixIcon: Icon(
              Icons.phone,
              color: Colors.blue,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kColorAppBar),
            ),
            label: Text(
              'phone',
              //  textAlign: context.locale=='en'?TextAlign.right:TextAlign.left,
            ),
            // labelText: ,
            labelStyle: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
