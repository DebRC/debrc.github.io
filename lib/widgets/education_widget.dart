import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/constants/colors_list.dart';
import 'package:portfolio_site/constants/education_list.dart';
import 'package:portfolio_site/constants/screensize.dart';

class EducationWidget extends StatelessWidget {
  final GlobalKey educationKey;
  const EducationWidget({Key? key, required this.educationKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: ColorsList.brightBackground,
      padding:
          EdgeInsets.symmetric(horizontal: width * 0.1, vertical: width * 0.06),
      key: educationKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "EDUCATION",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 30.0,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          SizedBox(
            height: 50,
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(seconds: 5),
              animatedTexts: [
                TyperAnimatedText(
                    "Currently pursuing an Undergradaute Degree but interested to pursue a Master's Degree in Computer Science soon.",
                    textAlign: TextAlign.start,
                    textStyle: GoogleFonts.delius(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        height: 1.3)),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= ScreenSize.lg) {
                return Wrap(
                  spacing: 30.0,
                  runSpacing: 20.0,
                  children: EducationList.educationList
                      .map(
                        (education) => SizedBox(
                          width: constraints.maxWidth / 2.0 - 20.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                education.name,
                                style: GoogleFonts.oswald(
                                  color: ColorsList.primary,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                education.degree,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.delius(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                education.discipline,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.delius(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                education.period,
                                style: GoogleFonts.delius(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: EducationList.educationList
                      .map(
                        (education) => Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              education.name,
                              style: GoogleFonts.oswald(
                                color: ColorsList.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              education.degree,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.delius(
                                color: Colors.white70,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              education.discipline,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.delius(
                                color: Colors.white60,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              education.period,
                              style: GoogleFonts.delius(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
