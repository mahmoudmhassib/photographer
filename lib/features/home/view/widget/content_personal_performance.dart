import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import 'custom_image_scroll.dart';

class ContentPersonalPerformance extends StatelessWidget {
  final String title;
final String personalPic;
  const ContentPersonalPerformance({super.key, required this.title, required this.personalPic,});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
               CircleAvatar(
                 radius: 25,
                backgroundImage: AssetImage(personalPic),
               ),
              const  SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                   title.toUpperCase() ,
                    style:const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                    children: [
                      kRateStar,
                      kRateStar,
                      kRateStar,
                      kRateStarFailed,
                      kRateStarFailed,
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const CustomImageScroll(),
      ],
    );
  }
}
