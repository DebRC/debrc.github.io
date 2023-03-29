import 'package:flutter/material.dart';
import 'package:portfolio_site/constants/colors_list.dart';
import 'package:portfolio_site/constants/image_assets.dart';

class ProfileImage extends StatelessWidget {
  final double width;
  const ProfileImage({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 370),
          child: Image.asset(
            ImageAssetConstants.profileImage,
            width: width * 0.29,
            height: width * 0.3,
          ),
        ),
        // Positioned(
        //   top: width * 0.17,
        //   left: 0,
        //   child: Image.asset(
        //     ImageAssetConstants.pythonCircle,
        //     width: width * 0.07,
        //     height: width * 0.07,
        //   ),
        // ),
        Positioned(
          top: width * 0.04,
          left: width * 0.025,
          child: Container(
            width: width * 0.007,
            height: width * 0.007,
            decoration: const BoxDecoration(
                color: ColorsList.primary,
                borderRadius: BorderRadius.all(Radius.circular(50))),
          ),
        ),
        Positioned(
          top: width * 0.19,
          right: 1,
          child: Container(
            width: width * 0.007,
            height: width * 0.007,
            decoration: const BoxDecoration(
                color: ColorsList.purple,
                borderRadius: BorderRadius.all(Radius.circular(50))),
          ),
        ),
        Positioned(
          top: width * 0.28,
          left: width * 0.03,
          child: Container(
            width: width * 0.007,
            height: width * 0.007,
            decoration: const BoxDecoration(
                color: ColorsList.secondary,
                borderRadius: BorderRadius.all(Radius.circular(50))),
          ),
        ),
        Positioned(
          top: width * 0.01,
          right: 1,
          child: Container(
            width: width * 0.012,
            height: width * 0.012,
            decoration: const BoxDecoration(
                color: ColorsList.darkBackground,
                borderRadius: BorderRadius.all(Radius.circular(50))),
          ),
        )
      ],
    );
  }
}
