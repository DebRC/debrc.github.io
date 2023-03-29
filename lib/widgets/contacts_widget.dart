import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_site/constants/colors_list.dart';
import 'package:portfolio_site/constants/image_assets.dart';
import 'package:portfolio_site/constants/screensize.dart';
import 'package:portfolio_site/widgets/nav_bar_footer_widget_helpers/nav_bar_item_with_icon.dart';

class ContactsWidget extends StatelessWidget {
  final GlobalKey contactsKey;
  const ContactsWidget({Key? key, required this.contactsKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        color: ColorsList.brightBackground,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.1, vertical: width * 0.05),
        key: contactsKey,
        child: Column(children: [
          Text(
            "GET IN TOUCH",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              "In a world of algorithms, hashtags and followers, we often forget the true importance of Human Connection",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white70, fontSize: 14)),
          SizedBox(
            height: 20,
          ),
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
                        icon: ImageAssetConstants.mail,
                        url: 'mailto:roychowdhurydebdoot@gmail.com',
                      ),
                      SizedBox(width: 10),
                      NavBarItemWithIcon(
                          text: 'LinkedIn',
                          icon: ImageAssetConstants.linkedIn,
                          url: 'https://www.linkedin.com/in/debdootrc/'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      NavBarItemWithIcon(
                        text: 'GitHub',
                        icon: ImageAssetConstants.github,
                        url: 'https://github.com/DebRC',
                      ),
                      SizedBox(width: 10),
                      NavBarItemWithIcon(
                        text: 'Facebook',
                        icon: ImageAssetConstants.facebook,
                        url: 'https://www.facebook.com/debdootroychowdhury',
                      ),
                      SizedBox(width: 10),
                      NavBarItemWithIcon(
                          text: 'Quora',
                          icon: ImageAssetConstants.quora,
                          url:
                              'https://www.quora.com/profile/Debdoot-Roy-Chowdhury-1'),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              );
            } else {
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
                        icon: ImageAssetConstants.mail,
                        url: 'mailto:roychowdhurydebdoot@gmail.com',
                      ),
                      SizedBox(width: 10),
                      NavBarItemWithIcon(
                          text: 'LinkedIn',
                          icon: ImageAssetConstants.linkedIn,
                          url: 'https://www.linkedin.com/in/debdootrc/'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      NavBarItemWithIcon(
                        text: 'GitHub',
                        icon: ImageAssetConstants.github,
                        url: 'https://github.com/DebRC',
                      ),
                      SizedBox(width: 10),
                      NavBarItemWithIcon(
                        text: 'Facebook',
                        icon: ImageAssetConstants.facebook,
                        url: 'https://www.facebook.com/debdootroychowdhury',
                      ),
                      SizedBox(width: 10),
                      NavBarItemWithIcon(
                          text: 'Quora',
                          icon: ImageAssetConstants.quora,
                          url:
                              'https://www.quora.com/profile/Debdoot-Roy-Chowdhury-1'),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              );
            }
          }),
        ]));
  }
}
