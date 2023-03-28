import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/screensize.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final GlobalKey interestsKey;
  late final GlobalKey skillsKey;
  late final GlobalKey homeKey;
  late final ScrollController scrollController;
  late final RxBool showFloatingButton;

  @override
  void initState() {
    interestsKey = GlobalKey();
    skillsKey = GlobalKey();
    homeKey = GlobalKey();
    scrollController = ScrollController();
    showFloatingButton = false.obs;

    scrollController.addListener(() {
      if (scrollController.offset >= ScreenSize.floatingButton) {
        showFloatingButton.value = true;
      } else {
        showFloatingButton.value = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: ObxValue<RxBool>(
          (data) => Visibility(
                visible: data.value,
                child: FloatingActionButton(
                    onPressed: () => scrollController.animateTo(
                        scrollController.position.minScrollExtent,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.easeInOut),
                    backgroundColor: CustomColors.primary,
                    child: const Icon(Icons.arrow_upward,
                        color: CustomColors.darkBackground)),
              ),
          showFloatingButton),
      body: Container(
        color: CustomColors.brightBackground,
        width: width,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Stack(
            children: const [
              // Column(
              //   children: [
              //     const SizedBox(height: 130),
              //     UpperContainer(width: width),
              //     LowerContainer(
              //         width: width,
              //         intrests: intrests,
              //         intrestsKey: intrestsKey,
              //         skillsKey: skillsKey),
              //     Container(
              //       width: width,
              //       height: 0.1,
              //       color: CustomColors.gray,
              //     ),
              //     Footer(
              //       width: width,
              //       scrollController: scrollController,
              //     ),
              //   ],
              // ),
              // NavBar(
              // width: width,
              // skillsKey: skillsKey,
              // intrestsKey: intrestsKey,
              // key: homeKey,
              // scrollController: scrollController,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
