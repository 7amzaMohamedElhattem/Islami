import 'package:flutter/material.dart';
import 'package:islami_appp/home/home.dart';
import 'package:islami_appp/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routname ,
      routes:{
        HomeScreen.routname :(context)=>  HomeScreen(),
        SuraDetails.routname :(context)=>  SuraDetails(),

      },
    );
  }
}
