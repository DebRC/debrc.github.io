import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/image_assets.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/widgets/projects_widget_helpers/project_card.dart';

class ProjectsWidget extends StatelessWidget {
  final GlobalKey projectsKey;
  const ProjectsWidget({Key? key, required this.projectsKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.7,
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
                    children: [
                      ProjectCard(
                        title: 'Flutter Development',
                        description:
                            'I’m developing android,ios and web applications using flutter platform.',
                        icon: ImageAssetConstants.flutter,
                        width: width,
                        ratio: 0.35,
                      ),
                      const SizedBox(height: 10),
                      ProjectCard(
                        title: 'Backend Development',
                        description:
                            'I’m developing backend applications using codnuit and spring boot with a good knowledge in nodejs.',
                        icon: ImageAssetConstants.backendIcon,
                        width: width,
                        ratio: 0.35,
                      ),
                      const SizedBox(height: 10),
                      ProjectCard(
                          title: 'Python Development',
                          description:
                              'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                          icon: ImageAssetConstants.python,
                          width: width,
                          ratio: 0.35),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectCard(
                        title: 'Flutter Development',
                        description:
                            'I’m developing android,ios and web applications using flutter platform.',
                        icon: ImageAssetConstants.flutter,
                        width: width,
                        ratio: 0.35,
                      ),
                      const SizedBox(height: 10),
                      ProjectCard(
                        title: 'Backend Development',
                        description:
                            'I’m developing backend applications using codnuit and spring boot with a good knowledge in nodejs.',
                        icon: ImageAssetConstants.backendIcon,
                        width: width,
                        ratio: 0.35,
                      ),
                      const SizedBox(height: 10),
                      ProjectCard(
                          title: 'Python Development',
                          description:
                              'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                          icon: ImageAssetConstants.python,
                          width: width,
                          ratio: 0.35),
                    ],
                  ),
                ],
              );
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProjectCard(
                    title: 'Flutter Development',
                    description:
                        'I’m developing android,ios and web applications using flutter platform.',
                    icon: ImageAssetConstants.flutter,
                    width: width,
                    ratio: 0.7,
                  ),
                  const SizedBox(height: 10),
                  ProjectCard(
                    title: 'Backend Development',
                    description:
                        'I’m developing backend applications using codnuit and spring boot with a good knowledge in nodejs.',
                    icon: ImageAssetConstants.backendIcon,
                    width: width,
                    ratio: 0.7,
                  ),
                  const SizedBox(height: 10),
                  ProjectCard(
                      title: 'Python Development',
                      description:
                          'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                      icon: ImageAssetConstants.python,
                      width: width,
                      ratio: 0.7),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
