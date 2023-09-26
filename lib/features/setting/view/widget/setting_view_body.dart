import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/language/local_keys.g.dart';
import '../../../../core/provider/theme.dart';
import '../../../../core/provider/theme_notifier.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lottie/lottie.dart';

import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'custom_change_language.dart';

class SettingViewBody extends StatefulWidget {
  const SettingViewBody({
    super.key,
  });

  @override
  State<SettingViewBody> createState() => _SettingViewBodyState();
}

class _SettingViewBodyState extends State<SettingViewBody> {
  var _darkTheme ;
  int? _selected;
  int? initialColor;
  List<List<Color>> bgColor = [
    [Colors.green[800]!],
    [Colors.red[800]!]
  ];
  bool status7 = false;
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * .04,
              top: MediaQuery.of(context).size.height * .02),
          height: MediaQuery.of(context).size.height * .4,
          child: Center(
            child: Lottie.asset('assets/animations/animation_lm4x1jf8.json'),
          ),
        ),
        CustomContainerSetting(
          child: ListTile(
            leading: Text(
              'العربيه',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            trailing: Radio(
              activeColor: Colors.black,
              fillColor: MaterialStateProperty.all(Colors.black),
              value: 1,
              groupValue: _selected,
              onChanged: (value) async {
                await context.setLocale(Locale('ar'));
                setState(() {
                  _selected = value;
                });
              },
            ),
          ),
        ),
        CustomContainerSetting(
          child: ListTile(
            leading: Text(
              'English',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            trailing: Radio(
              activeColor: Colors.black,
              fillColor: MaterialStateProperty.all(Colors.black),
              value: 2,
              groupValue: _selected,
              onChanged: (value) async {
                await context.setLocale(Locale('en'));
                setState(() {
                  _selected = value;
                });
              },
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * .02,
            left: MediaQuery.of(context).size.width * .05,
            right: MediaQuery.of(context).size.width * .05,

          ),
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .08),
          height: MediaQuery.of(context).size.height * .08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow:const [
                BoxShadow(
                ),
              ]),
          child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr(LocaleKeys.Appearance_mode, gender: 'label'),
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              FlutterSwitch(
                width: 60.0,
                height: 30.0,
                toggleSize: 35.0,
                value: status7,
                borderRadius: 30.0,
                padding: 1.0,
                activeToggleColor: Color(0xFF6E40C9),
                inactiveToggleColor: Color(0xFF2F363D),
                activeSwitchBorder: Border.all(
                  color: Color(0xFF3C1E70),
                  width: 4.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: Color(0xFFD1D5DA),
                  width: 4.0,
                ),
                activeColor: Color(0xFF271052),
                inactiveColor: Colors.white,
                activeIcon: Icon(
                  Icons.nightlight_round,
                  color: Color(0xFFF8E3A1),
                ),
                inactiveIcon: Icon(
                  Icons.wb_sunny,
                  color: Color(0xFFFFDF5D),
                ),
                onToggle: (val) {
                  setState(() {
                    status7 = val;
                  });
                  onThemeChanged(val, themeNotifier);
                },
              ),
            ],
          ),
    ),),
      ],
    );
  }

  void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
    (value)
        ? themeNotifier.setTheme(darkTheme)
        : themeNotifier.setTheme(lightTheme);
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', value);
  }
}
