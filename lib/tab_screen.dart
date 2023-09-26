import 'package:flutter/material.dart';
import 'package:photographer/features/home/view/home_view.dart';
import 'package:photographer/features/menu/view/menu_view.dart';
import 'package:photographer/features/profile/view/profile_view.dart';
import 'package:photographer/features/setting/view/setting_view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'core/utils/constants.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedIndex=0;
  onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  List<Map<String,dynamic>> tabPages=[
    {'page':const HomeView() },
    {'page':const SettingView() },
    {'page':const MenuView()},
    {'page':const ProfileView()},
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: tabPages[selectedIndex]['page'],
      bottomNavigationBar:  SalomonBottomBar(
        itemPadding:const EdgeInsets.symmetric(vertical: 10,horizontal: 18),
        backgroundColor: Colors.black.withOpacity(.7),
        currentIndex: selectedIndex,
        onTap: onButtonPressed,
        items: [
          /// Home
          buildSalomonBottomBarItem(Icons.home,"Home"),
          /// Settings
          buildSalomonBottomBarItem(Icons.settings,"Settings"),
          /// Menu
          buildSalomonBottomBarItem(Icons.menu_outlined,"Menu"),
          /// Profile
          buildSalomonBottomBarItem(Icons.person,"Profile"),
        ],
      ),
    );
  }

  SalomonBottomBarItem buildSalomonBottomBarItem(IconData icon,String title) {
    return SalomonBottomBarItem(
            icon: Icon(icon),
            title: Text(title) ,
            selectedColor: kColorAppBar,
            unselectedColor: Colors.grey
        );
  }
}
