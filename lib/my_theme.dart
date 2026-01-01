import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color PrimaryColor=Color(0xffB7935F);
  static const Color blackColor=Color(0xff242424);
 static ThemeData lightTheme = ThemeData(
   textTheme: TextTheme(
     bodyLarge: GoogleFonts.elMessiri(
       fontSize: 30,
       fontWeight: FontWeight.w700,
     ),
     bodyMedium: GoogleFonts.elMessiri(
       fontSize:25,
       fontWeight: FontWeight.w600,
     )

     ),

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      iconTheme: IconThemeData(
        size: 20,color: Colors.red
      ),

      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xffB7935F),
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.white,

    )
);
}