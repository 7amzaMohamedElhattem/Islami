import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_appp/hadeth_details/hadeth_detils_provider.dart';
import 'package:islami_appp/l10n/app_localizations.dart';
import 'package:islami_appp/model/hadeth_model.dart';
//import 'package:islami_appp/sura_details.dart';
import 'package:islami_appp/tabs/hadeth_details.dart';
import 'package:provider/provider.dart';

class AhadethTap extends StatefulWidget {
  static const String routname = "ahadeth_tap";
  const AhadethTap({super.key});

  @override
  State<AhadethTap> createState() => _AhadethTapState();
}


class _AhadethTapState extends State<AhadethTap> {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<hadethDetilsProvider>(
      create: (context) =>(hadethDetilsProvider()..loadhadethfile()),
      builder: (context, child) {
        var provider = Provider.of<hadethDetilsProvider>(context);
        return Column(
          children: [
            Center(
              child: Image.asset("assets/images/hadith_header.png", width: 250),
            ),
            Divider(color: Color(0xffB7935F), thickness: 4),
            Text( AppLocalizations.of(context)!.ahadeth
              ,
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Divider(color: Color(0xffB7935F), thickness: 4),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, hadethDetails.routname,
                            arguments: provider.ahadethdata[index]);
                      },

                      child: Text(provider.ahadethdata[index].Titel,textAlign: TextAlign.center));
                },
                separatorBuilder: (context, index) => Divider(
                  color: Color(0xffB7935F),
                  thickness: 2,
                  endIndent: 50,
                  indent: 50,
                ),
                itemCount: provider.ahadethdata.length,
              ),
            ),
          ],
        );
      },

    );
  }


}
