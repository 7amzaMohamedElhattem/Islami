import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_appp/home/ahadeth_tap.dart';
import 'package:islami_appp/home/quran_tap.dart';
import 'package:islami_appp/home/radio_tap.dart';
import 'package:islami_appp/home/sepha_tap.dart';
import 'package:islami_appp/home/setting_tap.dart';

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
          title: Text(
            "إسلامى",
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffB7935F),
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          iconSize: 35 ,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
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
