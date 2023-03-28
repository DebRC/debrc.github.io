import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/helpers/skills_lists.dart';
import 'package:portfolio_site/widgets/skills_widget_helper/skills.dart';

class SkillsWidget extends StatelessWidget {
  final GlobalKey skillsKey;
  const SkillsWidget({Key? key, required this.skillsKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.8,
      key: skillsKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('SKILLS',
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              )),
          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth >= ScreenSize.lg) {
              return SizedBox(
                width: width * 0.76,
                height: 100,
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 8,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) => Skills(
                    skillName: SkillsList.skillsList[index]['skillName'],
                    color: SkillsList.skillsList[index]['color'],
                    textColor: SkillsList.skillsList[index]['textColor'],
                  ),
                  staggeredTileBuilder: (int index) => const StaggeredTile.fit(
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
                  itemBuilder: (BuildContext context, int index) => Skills(
                    skillName: SkillsList.skillsList[index]['skillName'],
                    color: SkillsList.skillsList[index]['color'],
                    textColor: SkillsList.skillsList[index]['textColor'],
                  ),
                  staggeredTileBuilder: (int index) => const StaggeredTile.fit(
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
                  itemBuilder: (BuildContext context, int index) => Skills(
                    skillName: SkillsList.skillsList[index]['skillName'],
                    color: SkillsList.skillsList[index]['color'],
                    textColor: SkillsList.skillsList[index]['textColor'],
                  ),
                  staggeredTileBuilder: (int index) => const StaggeredTile.fit(
                    8,
                  ),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 40.0,
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
