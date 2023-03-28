import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Description extends StatelessWidget {
  final bool isVertical;
  final double width;
  const Description({required this.isVertical, required this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isVertical ? double.infinity : width * 0.29,
      child: Column(
        crossAxisAlignment:
            isVertical ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 135,
              height: 40,
              alignment: Alignment.center,
              color: CustomColors.primary,
              child: Center(
                  child: Text('CS Engineer',
                      style: GoogleFonts.getFont('Days One',
                          color: Colors.black, fontSize: 10)))),
          SizedBox(height: 0.015 * width),
          Text('Hey! ',
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white, fontSize: 30)),
          const SizedBox(height: 5),
          Text("I'm Debdoot",
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white, fontSize: 30)),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: isVertical ? double.infinity : width * 0.29,
              height: 90,
              child: AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(seconds: 2),
                animatedTexts: [
                  TyperAnimatedText(
                      "I'm good with Theoretical Computer Science &\nA little bit of development using Flutter and Node JS\n\nI have secured AIR 52 in GATE CS 2023",
                      textAlign:
                          isVertical ? TextAlign.center : TextAlign.start,
                      textStyle: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray, fontSize: 15)),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async =>
                !await launchUrlString('https://in.linkedin.com/in/debdootrc'),
            child: Text("Connect with me!",
                style: GoogleFonts.getFont('Delius',
                    decoration: TextDecoration.underline,
                    color: CustomColors.primary,
                    fontSize: 20)),
          )
        ],
      ),
    );
  }
}
