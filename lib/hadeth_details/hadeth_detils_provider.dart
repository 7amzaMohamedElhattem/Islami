import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_appp/model/hadeth_model.dart';

class hadethDetilsProvider extends ChangeNotifier{
  List<HadethModel> ahadethdata = [];


  loadhadethfile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((hadethfile) {
      List<String> ahadeth = hadethfile.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> ahahethLines = hadeth.trim().split("\n");
        String Titel = ahahethLines[0];
        ahahethLines.removeAt(0);
        List<String> ahadethcontent = ahahethLines;
        ahadethdata.add(
          HadethModel(Titel: Titel, Hadethcontent: ahadethcontent),
        );
      }

    });
    ChangeNotifier();

  }
}