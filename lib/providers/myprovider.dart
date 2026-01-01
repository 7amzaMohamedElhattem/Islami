import 'package:flutter/cupertino.dart';

class Myprovider extends ChangeNotifier{
  String LanguageCode="en";
  void changeLange( String langeCode){
    LanguageCode=langeCode;
    notifyListeners();

  }
}