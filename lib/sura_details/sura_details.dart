import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_appp/model/sura_model.dart';
import 'package:islami_appp/sura_details/sura_details_provider.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routname = "sura_details";
  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    return ChangeNotifierProvider<SuraDetailProvider>(
      create: (context) => SuraDetailProvider()..loadFile(model.index),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailProvider>(context);
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            appBar: AppBar(title: Text(model.suraName)),
            // ✅ 4. تصحيح الـ ListView
            body: provider.verses.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  ) // إظهار تحميل حتى ينتهي الملف
                : Card(
                    margin: EdgeInsets.all(20),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    child: ListView.builder(
                      itemCount: provider
                          .verses
                          .length, // الـ itemCount يكون هنا خارج الـ itemBuilder
                      itemBuilder: (context, index) {
                        return Text(
                          provider.verses[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.elMessiri(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        );
                      },
                    ),
                  ),
          ),
        );
      },
    );
  }
}
