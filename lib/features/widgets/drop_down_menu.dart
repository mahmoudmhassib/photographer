import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';

import '../../core/utils/constants.dart';
import '../../core/utils/styles.dart';

class DropDownTextField extends StatefulWidget {
  final String hintDropDown;
  final List<String> dropValue;
  const DropDownTextField({super.key, required this.hintDropDown, required this.dropValue});

  @override
  State<DropDownTextField> createState() => _DropDownTextFieldState();
}

class _DropDownTextFieldState extends State<DropDownTextField> {
  List<String> cities=['Cairo','Giza','6 Octobar'];
  final
  jobRoleSearchDropdownCtrl = TextEditingController();
  //jobRoleDropdownCtrl = TextEditingController(),
      //jobRoleFormDropdownCtrl = TextEditingController(),
      //jobRoleSearchRequestDropdownCtrl = TextEditingController();

  /*Future<List<String>> getFakeRequestData(String query)async{
    List<String> data=['Cairo','Giza','6 Octobar'];
    return await Future.delayed(Duration(seconds: 1),(){
      return data.where((element) {
        return element.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }*/

  @override
  void dispose() {
    jobRoleSearchDropdownCtrl.dispose();
   // jobRoleDropdownCtrl.dispose();
    //jobRoleFormDropdownCtrl.dispose();
    //jobRoleSearchRequestDropdownCtrl.dispose();
    super.dispose();
  }
 // String dropdownValue = 'Cairo';
  @override
  Widget build(BuildContext context) {
    return
    CustomDropdown.search(
    hintText: widget.hintDropDown,
      hintStyle: Styles.hintTextField,
      borderSide:const BorderSide(color: kBorderTextFieldColor, width: 1.5),
    borderRadius: BorderRadius.zero,
    controller: jobRoleSearchDropdownCtrl,
    items: widget.dropValue,
      fillColor: kPrimaryColor,
    );

  }
}
