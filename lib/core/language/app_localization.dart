import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations{
  final Locale? locale;

  AppLocalizations({this.locale});
  static AppLocalizations? of(BuildContext context){
    return Localizations.of<AppLocalizations>(context,AppLocalizations);
  }
  static const LocalizationsDelegate<AppLocalizations> delegate=AppLocalizationsDelegate();
  late Map<String,String> _LocalizedString;
  Future loadJsonLanguage() async{
    String jsonString=await rootBundle.loadString('translate/${locale!.languageCode}.json');
    Map<String,dynamic> jsonMap=json.decode(jsonString);
    _LocalizedString=jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }
  String translate(String key) => _LocalizedString[key]??'';
}
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations>{
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
   return ['en','ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
   AppLocalizations localizations=AppLocalizations(locale:locale);
   await localizations.loadJsonLanguage();
   return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) => false;
  
}
extension TranslateX on String{
  String tr(BuildContext context){
    return AppLocalizations.of(context)!.translate(this);
  }
}