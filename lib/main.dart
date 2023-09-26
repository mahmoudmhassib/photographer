import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photographer/core/language/codegen_loader.g.dart';
import 'core/provider/theme.dart';
import 'core/provider/theme_notifier.dart';
import 'features/splash/splash_view.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey='pk_test_51Nc587IEWAmTzenpQh95kfiOr2bFaZGXhuMqwXp3ShVJJl6IBDURcUJwRnLxLPLCUr0HWqmsJimtssuSj5rti9cq00mTNKcTtX';
  await EasyLocalization.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: <SystemUiOverlay>[SystemUiOverlay.top],
  ).then((_) {
    SharedPreferences.getInstance().then((prefs) {
      var darkModeOn = prefs.getBool('darkMode') ?? true;
      runApp(ChangeNotifierProvider<ThemeNotifier>(
        create: (context) => ThemeNotifier(darkModeOn ? darkTheme : lightTheme),
        child: EasyLocalization(
          supportedLocales: const [
            Locale(
              'en',
            ),
            Locale(
              'ar',
            ),
          ],
          path: 'translate/',
          fallbackLocale: const Locale('en'),
          assetLoader: const CodegenLoader(),
          child: const SawarnyApp(),
        ),
      ));
    });
  });
}

class SawarnyApp extends StatelessWidget {
  const SawarnyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: true);
    return MaterialApp(
      /* localizationsDelegates: const[
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: [
            Locale('en',),
            Locale('ar',),
          ],
          localeResolutionCallback: (deviceLocal,supportedLocals){
            for(var Locale in supportedLocals){
              if(deviceLocal!=null && deviceLocal.languageCode==Locale.languageCode){
                return deviceLocal;
              }
            }

              return supportedLocals.first;
          },*/
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme:/* Theme.of(context).copyWith(
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(systemOverlayStyle: SystemUiOverlayStyle.dark),
      ),*/
      themeNotifier.getTheme(),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
