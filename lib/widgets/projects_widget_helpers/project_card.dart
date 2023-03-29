import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  final double ratio;
  const ProjectCard({required this.project, required this.ratio, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      color: CustomColors.brightBackground,
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
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.primary, fontSize: 16)),
                  const SizedBox(height: 8),
                  Text(project.period,
                      style: GoogleFonts.getFont('Delius',
                          color: Colors.white, fontSize: 15)),
                  const SizedBox(height: 10),
                  Text(project.description,
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray, fontSize: 12)),
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
    );
  }
}
