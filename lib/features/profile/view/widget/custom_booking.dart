import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../core/language/local_keys.g.dart';
class CustomBooking extends StatefulWidget {
  const CustomBooking({super.key});

  @override
  State<CustomBooking> createState() => _CustomBookingState();
}

class _CustomBookingState extends State<CustomBooking> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
       Padding(
         padding:  const EdgeInsets.only(left:14.0),
         child:  Text(LocaleKeys.describtion_msg.tr(),style: const TextStyle(color: Colors.white),),
       ),
        Container(
          margin:const EdgeInsets.only(left: 4,right: 14),
          width: MediaQuery.of(context).size.width *.2,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(colors: [Colors.orangeAccent.shade100,Colors.orange.shade600,Colors.deepOrange])
          ),
          child:const Center(
            child: Text('Booking',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
          ),
        ),
      ],
    );
  }
}