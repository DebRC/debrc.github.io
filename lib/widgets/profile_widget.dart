import 'package:flutter/material.dart';
import 'package:portfolio_site/constants/colors_list.dart';
import 'package:portfolio_site/constants/screensize.dart';
import 'package:portfolio_site/widgets/profile_widget_helpers/description.dart';
import 'package:portfolio_site/widgets/profile_widget_helpers/profile_image.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: ColorsList.darkBackground,
      padding: EdgeInsets.only(bottom: width * 0.05, top: width * 0.05),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth >= ScreenSize.lg) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
        } else if (constraints.maxWidth < ScreenSize.lg &&
            constraints.maxWidth >= ScreenSize.md) {
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
              SizedBox(height: 0.1 * width),
              Description(isVertical: true, width: width),
            ],
          );
        }
      }),
    );
  }
}
