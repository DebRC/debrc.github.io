import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/constants/achievements_list.dart';
import 'package:portfolio_site/constants/colors_list.dart';
import 'package:portfolio_site/constants/screensize.dart';

class AchieveMentsWidget extends StatelessWidget {
  final GlobalKey achievementsKey;
  const AchieveMentsWidget({Key? key, required this.achievementsKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: ColorsList.brightBackground,
      padding:
          EdgeInsets.symmetric(horizontal: width * 0.2, vertical: width * 0.06),
      key: achievementsKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "ACHIEVEMENTS",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 30.0,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth >= ScreenSize.lg) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: AchievementsList.achievementsList
                        .sublist(0,
                            AchievementsList.achievementsList.length ~/ 2 + 1)
                        .map(
                          (achievement) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                achievement.title,
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
                                achievement.desc,
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
                                achievement.period,
                                style: GoogleFonts.delius(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: AchievementsList.achievementsList
                        .sublist(
                            AchievementsList.achievementsList.length ~/ 2 + 1)
                        .map(
                          (achievement) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                achievement.title,
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
                                achievement.desc,
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
                                achievement.period,
                                style: GoogleFonts.delius(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ],
              );
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: AchievementsList.achievementsList
                    .map(
                      (achievement) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            achievement.title,
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
                            achievement.desc,
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
                            achievement.period,
                            style: GoogleFonts.delius(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 15.0,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    )
                    .toList(),
              );
            }
          }),
        ],
      ),
    );
  }
}
