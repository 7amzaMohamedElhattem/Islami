import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../sura_model.dart';


class SuraDetails extends StatelessWidget {
  static const String routname = "sura_details";
  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage("assets/images/background.png"),
      fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,

          title: Text(model.suraName,style: GoogleFonts.elMessiri(
            fontSize: 30,fontWeight: FontWeight.w700
          ),),
          centerTitle: true,

        ),

      ),
    );
  }
}
