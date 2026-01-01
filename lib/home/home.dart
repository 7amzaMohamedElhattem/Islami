import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_appp/l10n/app_localizations.dart';
import 'package:islami_appp/tabs/ahadeth_tap.dart';
import 'package:islami_appp/tabs/quran_tap.dart';
import 'package:islami_appp/tabs/radio_tap.dart';
import 'package:islami_appp/tabs/sepha_tap.dart';
import 'package:islami_appp/tabs/setting_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routname = "home";
   const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 int index=0;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(AppLocalizations.of(context)!.app_name,
          style: Theme.of(context).textTheme.bodyLarge,),
          centerTitle: true,
        ),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffB7935F),
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          iconSize: 30,
          onTap: (value){
            index = value;
            setState(() {

            });

          },

          items: [
            BottomNavigationBarItem(   icon: ImageIcon(AssetImage("assets/images/ic_quran.png")), label: "",),
            BottomNavigationBarItem(   icon: ImageIcon(AssetImage("assets/images/ic_ahadeth.png")), label: "",),
            BottomNavigationBarItem(   icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")), label: "",),
            BottomNavigationBarItem(   icon: ImageIcon(AssetImage("assets/images/ic_radio.png")), label: "",),
            BottomNavigationBarItem(   icon: Icon(Icons.settings), label: "",),


          ],
        ),
      ),
    );
  }
  List<Widget>tabs=[
    QuranTap(),
    AhadethTap(),
    SephaTap(),
    RadioTap(),
    SettingTap()

  ];
}
