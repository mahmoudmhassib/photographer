import 'package:flutter/material.dart';

import 'content_personal_performance.dart';

class CustomPersonalPerformance extends StatefulWidget {
   final int index;
   final String title;
   final String personalPic;
  const CustomPersonalPerformance({super.key, required this.index, required this.title, required this.personalPic,});

  @override
  State<CustomPersonalPerformance> createState() => _CustomPersonalPerformanceState();
}

class _CustomPersonalPerformanceState extends State<CustomPersonalPerformance> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 12),
      //TODO:size All item
      height: MediaQuery.of(context).size.height * .4,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), //
          )
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child:  StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return ContentPersonalPerformance(title: widget.title, personalPic: widget.personalPic,);
        }
      ),
    );
  }
}
