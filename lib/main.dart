import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_site/helpers/colors_list.dart';
import 'package:portfolio_site/screens/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: ColorsList.primary,
    statusBarColor: ColorsList.primary,
  ));
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: ColorsList.primary,
      splashColor: ColorsList.primary,
      highlightColor: ColorsList.primary,
    ),
    title: 'DebRC',
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
