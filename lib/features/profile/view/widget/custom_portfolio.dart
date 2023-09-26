import 'package:flutter/material.dart';
import 'custom_staggered_grid.dart';
class CustomPortfolio extends StatelessWidget {
  const CustomPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 40),
        padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
        decoration:const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight:Radius.circular(40) ,topLeft: Radius.circular(40))
        ),
        child:const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: 12),
              child: Text('Portfolio',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
            ),
            CustomStaggerdGridView(),

          ],
        ),
      ),
    );
  }
}