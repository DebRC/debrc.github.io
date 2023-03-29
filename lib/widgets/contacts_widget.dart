import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/image_assets.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/widgets/nav_bar_footer_widget_helpers/nav_bar_item_with_icon.dart';

class ContactsWidget extends StatelessWidget {
  final GlobalKey contactsKey;
  const ContactsWidget({Key? key, required this.contactsKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        color: CustomColors.darkBackground,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.1, vertical: width * 0.05),
        key: contactsKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GET IN TOUCH",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                  height: 1.3,
                ),
              ),
              Text(
                  "In a world of algorithms, hashtags and followers, we often forget the true importance of Human Connection",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Delius',
                      color: CustomColors.primary, fontSize: 14)),
              LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth >= ScreenSize.lg) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavBarItemWithIcon(
                            text: 'Mail',
                            icon: ImageAssetConstants.linkedIn,
                            url: '',
                          ),
                          SizedBox(width: 10),
                          NavBarItemWithIcon(
                              text: 'LinkedIn',
                              icon: ImageAssetConstants.linkedIn,
                              url: ''),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NavBarItemWithIcon(
                            text: 'GitHub',
                            icon: ImageAssetConstants.github,
                            url: '',
                          ),
                          SizedBox(width: 10),
                          NavBarItemWithIcon(
                            text: 'Facebook',
                            icon: ImageAssetConstants.facebook,
                            url: '',
                          ),
                          SizedBox(width: 10),
                          NavBarItemWithIcon(
                              text: 'Quora',
                              icon: ImageAssetConstants.facebook,
                              url: ''),
                          SizedBox(width: 10),
                        ],
                      ),
                    ],
                  );
                } else {
                  return Column();
                }
              }),
            ]));
  }
}
