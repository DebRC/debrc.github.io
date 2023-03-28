import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/education.dart';
import 'package:portfolio_site/helpers/image_assets.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/widgets/interest.dart';
import 'package:portfolio_site/widgets/skill_card.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class LowerContainer extends StatelessWidget {
  final double width;
  final List<Map> interests;
  final GlobalKey educationKey;
  final GlobalKey projectsKey;
  final GlobalKey skillsKey;
  final GlobalKey contactsKey;

  const LowerContainer(
      {Key? key,
      required this.width,
      required this.interests,
      required this.educationKey,
      required this.projectsKey,
      required this.skillsKey,
      required this.contactsKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        color: CustomColors.darkBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= ScreenSize.lg) {
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      key: educationKey,
                      child: ResponsiveWrapper(
                        maxWidth: width * 0.7,
                        minWidth: width * 0.7,
                        defaultScale: false,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            SizedBox(
                              height: 5.0,
                            ),
                            Wrap(
                              children: [
                                Container(
                                  constraints: BoxConstraints(maxWidth: 400.0),
                                  child: Text(
                                    "A full stack all round developer that does all the job he needs to do at all times. Actually this is a false statement",
                                    style: TextStyle(
                                      color: Colors.white,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return Container(
                                  child: Wrap(
                                    spacing: 20.0,
                                    runSpacing: 20.0,
                                    children: Education.educationList
                                        .map(
                                          (education) => Container(
                                            width: constraints.maxWidth / 2.0 -
                                                20.0,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  education.period,
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
                                                  education.description,
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    height: 1.5,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20.0,
                                                ),
                                                MouseRegion(
                                                  cursor:
                                                      SystemMouseCursors.click,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child: Text(
                                                      education.linkName,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
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
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // skills cards
                        Text('Projects',
                            style: GoogleFonts.getFont('Delius',
                                color: Colors.white, fontSize: 19)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          key: projectsKey,
                          children: [
                            SkillCard(
                              title: 'Flutter Development',
                              description:
                                  'I’m developing android,ios and web applications using flutter platform.',
                              icon: ImageAssetConstants.flutter,
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            SkillCard(
                              title: 'Backend Development',
                              description:
                                  'I’m developing backend applications using codnuit and spring boot with a good knowledge in nodejs.',
                              icon: ImageAssetConstants.backendIcon,
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            SkillCard(
                                title: 'Python Development',
                                description:
                                    'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                                icon: ImageAssetConstants.python,
                                width: width,
                                ratio: 0.35),
                          ],
                        ),
                        SizedBox(width: 0.05 * width),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkillCard(
                              title: 'Flutter Development',
                              description:
                                  'I’m developing android,ios and web applications using flutter platform.',
                              icon: ImageAssetConstants.flutter,
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            SkillCard(
                              title: 'Backend Development',
                              description:
                                  'I’m developing backend applications using codnuit and spring boot with a good knowledge in nodejs.',
                              icon: ImageAssetConstants.backendIcon,
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            SkillCard(
                                title: 'Python Development',
                                description:
                                    'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                                icon: ImageAssetConstants.python,
                                width: width,
                                ratio: 0.35),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      key: educationKey,
                      child: ResponsiveWrapper(
                        maxWidth: width * 0.7,
                        minWidth: width * 0.7,
                        defaultScale: false,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            SizedBox(
                              height: 5.0,
                            ),
                            Wrap(
                              children: [
                                Container(
                                  constraints: BoxConstraints(maxWidth: 400.0),
                                  child: Text(
                                    "A full stack all round developer that does all the job he needs to do at all times. Actually this is a false statement",
                                    style: TextStyle(
                                      color: Colors.white,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return Container(
                                  child: Wrap(
                                    spacing: 20.0,
                                    runSpacing: 20.0,
                                    children: Education.educationList
                                        .map(
                                          (education) => Container(
                                            width: constraints.maxWidth / 2.0 -
                                                20.0,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  education.period,
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
                                                  education.description,
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    height: 1.5,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20.0,
                                                ),
                                                MouseRegion(
                                                  cursor:
                                                      SystemMouseCursors.click,
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child: Text(
                                                      education.linkName,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
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
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Text('Projects',
                        style: GoogleFonts.getFont('Delius',
                            color: Colors.white, fontSize: 19)),
                    Column(
                      key: projectsKey,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkillCard(
                            title: 'Flutter Development',
                            description:
                                'I’m developing android,ios and web applications using flutter platform.',
                            icon: ImageAssetConstants.flutter,
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Backend Development',
                            description:
                                'I’m developing backend applications using codnuit and spring boot with a good knowledge in nodejs.',
                            icon: ImageAssetConstants.backendIcon,
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Python Development',
                            description:
                                'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                            icon: ImageAssetConstants.python,
                            width: 2 * width,
                            ratio: 0.45),
                      ],
                    ),
                  ],
                );
              }
            }),
            SizedBox(
              height: width * 0.07,
            ),
            Container(
              alignment: Alignment.centerLeft,
              key: skillsKey,
              margin: EdgeInsets.only(
                  left: width >= ScreenSize.lg ? width * 0.1 : width * 0.05),
              child: Text('Some of my skills',
                  style: GoogleFonts.getFont('Delius',
                      color: Colors.white, fontSize: 19)),
            ),
            SizedBox(height: width * 0.03),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= ScreenSize.lg) {
                return SizedBox(
                  width: width * 0.76,
                  height: 100,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 8,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) => Interest(
                      intrest: interests[index]['interest'],
                      color: interests[index]['color'],
                      textColor: interests[index]['textColor'],
                      key: index == 4 ? skillsKey : null,
                    ),
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.fit(
                      2,
                    ),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 40.0,
                  ),
                );
              } else if (constraints.maxWidth < ScreenSize.lg &&
                  constraints.maxWidth >= ScreenSize.sm) {
                return SizedBox(
                  width: width * 0.76,
                  height: 180,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 8,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) => Interest(
                      intrest: interests[index]['interest'],
                      color: interests[index]['color'],
                      textColor: interests[index]['textColor'],
                      key: index == 4 ? skillsKey : null,
                    ),
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.fit(
                      4,
                    ),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 40.0,
                  ),
                );
              } else {
                return SizedBox(
                  width: width * 0.76,
                  height: 360,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 8,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) => Interest(
                      intrest: interests[index]['interest'],
                      color: interests[index]['color'],
                      textColor: interests[index]['textColor'],
                      key: index == 4 ? skillsKey : null,
                    ),
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.fit(
                      8,
                    ),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 40.0,
                  ),
                );
              }
            }),
            const SizedBox(height: 10)
          ],
        ));
  }
}
