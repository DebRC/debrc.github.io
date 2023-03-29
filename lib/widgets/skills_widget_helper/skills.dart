import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/constants/colors_list.dart';

class Skills extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String skillName;
  const Skills(
      {required this.skillName,
      required this.color,
      required this.textColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
              color: (textColor == Colors.black)
                  ? ColorsList.primary
                  : textColor)),
      child: Center(
          child: Text('.' + skillName,
              style: GoogleFonts.getFont('Delius',
                  color: textColor, fontSize: 13))),
    );
  }
}
