import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/constants/screensize.dart';

class Logo extends StatelessWidget {
  final double width;
  final ScrollController scrollController;
  const Logo({required this.width, required this.scrollController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => scrollController.animateTo(
          scrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOut),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Text("DebRC",
            style: GoogleFonts.getFont('Delius',
                color: Colors.white,
                fontSize: width >= ScreenSize.xlg
                    ? width * 0.02
                    : ScreenSize.xlg * 0.02)),
      ),
    );
  }
}
