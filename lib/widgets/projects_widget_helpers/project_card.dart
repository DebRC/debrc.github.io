import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/constants/colors_list.dart';
import 'package:portfolio_site/constants/screensize.dart';
import 'package:portfolio_site/models/project.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  final double ratio;
  const ProjectCard({required this.project, required this.ratio, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => launchUrlString(project.url),
      child: Card(
        color: ColorsList.brightBackground,
        child: SizedBox(
          width: width * ratio,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title,
                        style: GoogleFonts.delius(
                            color: ColorsList.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            height: 1.3)),
                    const SizedBox(height: 8),
                    Text(project.period,
                        style: GoogleFonts.delius(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.3)),
                    const SizedBox(height: 10),
                    Text(project.description,
                        style: GoogleFonts.delius(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.3)),
                  ],
                ),
              ),
              width >= ScreenSize.md
                  ? Positioned(
                      child: Image.asset(project.icon),
                      top: 20,
                      right: 20,
                      width: 20,
                      height: 18)
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
