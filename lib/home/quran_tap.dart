import 'package:flutter/material.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: ImageIcon(AssetImage("assets/images/quran_header_icn.png"),size: 200,)),

      ],

    );
  }
}
