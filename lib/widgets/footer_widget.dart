import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/widgets/nav_bar_footer_widget_helpers/logo.dart';

class FooterWidget extends StatelessWidget {
  final ScrollController scrollController;
  const FooterWidget({required this.scrollController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: CustomColors.darkBackground,
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(
              width: width,
              scrollController: scrollController,
            ),
            const SizedBox(height: 22),
            width > ScreenSize.sm
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Developed by DebRC',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                      Text('All rights reserved',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                      Text('roychowdhurydebdoot@gmail.com',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                    ],
                  )
                : Column(
                    children: [
                      Text('Developed by DebRC',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                      Text('All rights reserved',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                      Text('roychowdhurydebdoot@gmail.com',
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 14)),
                    ],
                  ),
          ],
        ));
  }
}
