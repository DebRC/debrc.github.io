import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/screens/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: CustomColors.primary,
    statusBarColor: CustomColors.primary,
  ));
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: CustomColors.primary,
      splashColor: CustomColors.primary,
      highlightColor: CustomColors.primary,
    ),
    title: 'DebRC',
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
