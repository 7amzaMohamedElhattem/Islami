import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_appp/home/home.dart';
import 'package:islami_appp/model/hadeth_model.dart';

class hadethDetails extends StatelessWidget {
  static const String routname = "hadeth_details";
  const hadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
   var model = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(model.Titel,style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
        ),
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12)
          ),
          child: ListView.builder(itemCount: model.Hadethcontent.length,
              itemBuilder: (context,index){
            return Text(model.Hadethcontent[index],textAlign: TextAlign.center,);

          }),
        ),
      ),
    ); // هذا القوس يغلق الـ Scaffold والـ return
  } // <--- هذا القوس كان ناقصاً، وهو يغلق دالة الـ build
}
