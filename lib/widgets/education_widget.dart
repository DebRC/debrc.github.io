import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/education_list.dart';
import 'package:portfolio_site/helpers/screensize.dart';

class EducationWidget extends StatelessWidget {
  final GlobalKey educationKey;
  const EducationWidget({Key? key, required this.educationKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: CustomColors.brightBackground,
      padding:
          EdgeInsets.symmetric(horizontal: width * 0.1, vertical: width * 0.05),
      key: educationKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "EDUCATION",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "Currently pursuing my undergradaute degree but interested to pursue a Master's Degree in near future",
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                education.degree,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white70,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                education.discipline,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white60,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                education.period,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              )
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
                                color: Colors.white,
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
                              style: TextStyle(
                                color: Colors.white70,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              education.discipline,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white60,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              education.period,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                            )
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
