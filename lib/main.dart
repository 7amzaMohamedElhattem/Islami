import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_appp/home/home.dart';
import 'package:islami_appp/l10n/app_localizations.dart';
import 'package:islami_appp/my_theme.dart';
import 'package:islami_appp/providers/myprovider.dart';
import 'package:islami_appp/sura_details/sura_details.dart';
import 'package:islami_appp/tabs/ahadeth_tap.dart';
import 'package:islami_appp/tabs/hadeth_details.dart';
//import 'package:islami_appp/tabs/sura_details.dart';
import 'package:provider/provider.dart';
//import 'l10n/app_localizations.dart';


void main() {
  runApp(ChangeNotifierProvider<Myprovider>(
    create:(context) =>Myprovider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<Myprovider>(context);
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      initialRoute: HomeScreen.routname,
      locale: Locale("${provider.LanguageCode}"),
      routes: {
        HomeScreen.routname: (context) => HomeScreen(),
        SuraDetails.routname: (context) => SuraDetails(),
        AhadethTap.routname: (context) => AhadethTap(),
        hadethDetails.routname: (context) => hadethDetails(),
      },
    );
  }
}
