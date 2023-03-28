import 'package:flutter/material.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/widgets/description.dart';
import 'package:portfolio_site/widgets/profile_image.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: CustomColors.brightBackground,
      padding: const EdgeInsets.only(bottom: 20),
      child: LayoutBuilder(builder: (context, consraints) {
        if (consraints.maxWidth >= ScreenSize.lg) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: width * 0.02),
              Description(
                isVertical: false,
                width: width,
              ),
              const SizedBox(width: 20),
              ProfileImage(
                width: width,
              )
            ],
          );
        } else if (consraints.maxWidth < ScreenSize.lg &&
            consraints.maxWidth >= ScreenSize.md) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: width * 0.07),
              ProfileImage(width: (2 * width) - 0.16 * width),
              SizedBox(height: 0.05 * width),
              Description(
                isVertical: true,
                width: width,
              ),
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: width * 0.07),
              Center(child: ProfileImage(width: 2 * width)),
              SizedBox(height: 0.05 * width),
              Description(isVertical: true, width: width),
            ],
          );
        }
      }),
    );
  }
}
