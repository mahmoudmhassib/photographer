import 'package:flutter/material.dart';
import 'package:photographer/core/language/app_localization.dart';
import 'package:photographer/core/utils/assets.dart';
import 'package:provider/provider.dart';

import '../../../../core/language/language_notifier.dart';
class CustomAddressMember extends StatelessWidget {
  const CustomAddressMember({super.key});

  @override
  Widget build(BuildContext context) {
   // var appLanguage = Provider.of<AppLanguage>(context);
    return Container(
      margin:const EdgeInsets.only(top: 35,bottom: 35),
      width: double.infinity,
      child:const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.green,
              backgroundImage: AssetImage(AssetsData.profile),
            ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mahmoud Mhassib',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 3,),
              Row(
                children: [
                  Icon(Icons.location_on_sharp,color: Colors.white,size: 18,),
                  SizedBox(width: 5,),
                  Text('El -qerateen.Giza',style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}