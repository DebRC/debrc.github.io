import 'package:flutter/material.dart';
import 'package:portfolio_site/helpers/colors_list.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NavBarItemWithIcon extends StatelessWidget {
  final String text;
  final String icon;
  final String url;

  const NavBarItemWithIcon(
      {required this.text, required this.icon, required this.url, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor:
            MaterialStateProperty.all<Color>(ColorsList.brightBackground),
      ),
      icon: Image.asset(icon),
      onPressed: () async {
        await launchUrlString(url);
      },
      label: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }
}
