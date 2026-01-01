import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_appp/my_theme.dart';
import 'package:islami_appp/providers/myprovider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);

    return Padding(
      padding: EdgeInsetsGeometry.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLange("en");
                },
                child: Text(
                  "English",
                  style: GoogleFonts.elMessiri(
                    fontSize: 30,
                    color: provider.LanguageCode == "en"
                        ? MyThemeData.PrimaryColor
                        : MyThemeData.blackColor,
                  ),
                ),
              ),
              if (provider.LanguageCode == "en") ...[
                Icon(Icons.done, size: 30, color: MyThemeData.PrimaryColor),
              ],
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLange("ar");
                },
                child: Text(
                  "Arabic",
                  style: GoogleFonts.elMessiri(
                    fontSize: 30,
                    color: provider.LanguageCode == "ar"
                        ? MyThemeData.PrimaryColor
                        : MyThemeData.blackColor,
                  ),
                ),
              ),
              if (provider.LanguageCode == "ar") ...[
                Icon(Icons.done, size: 30, color: MyThemeData.PrimaryColor),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
