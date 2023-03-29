import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/projects_list.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/widgets/projects_widget_helpers/project_card.dart';

class ProjectsWidget extends StatelessWidget {
  final GlobalKey projectsKey;
  const ProjectsWidget({Key? key, required this.projectsKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: CustomColors.darkBackground,
      padding:
          EdgeInsets.symmetric(horizontal: width * 0.1, vertical: width * 0.05),
      key: projectsKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "PROJECTS",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              height: 1.3,
            ),
          ),
          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth >= ScreenSize.lg) {
              return Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: ProjectsList.projectsList
                        .sublist(
                            0, (ProjectsList.projectsList.length / 2) as int)
                        .map(
                          (project) => Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ProjectCard(
                                project: project,
                                ratio: 0.35,
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: ProjectsList.projectsList
                        .sublist((ProjectsList.projectsList.length / 2) as int)
                        .map(
                          (project) => Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ProjectCard(
                                project: project,
                                ratio: 0.35,
                              ),
                              SizedBox(
                                height: 5,
                              )
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
                children: ProjectsList.projectsList
                    .map(
                      (project) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProjectCard(
                            project: project,
                            ratio: 0.7,
                          ),
                          SizedBox(
                            height: 5,
                          )
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
