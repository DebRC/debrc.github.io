import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_site/helpers/colors.dart';
import 'package:portfolio_site/helpers/interests_constants.dart';
import 'package:portfolio_site/helpers/screensize.dart';
import 'package:portfolio_site/widgets/footer.dart';
import 'package:portfolio_site/widgets/lower_container.dart';
import 'package:portfolio_site/widgets/nav_bar.dart';
import 'package:portfolio_site/widgets/upper_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final GlobalKey homeKey;
  late final GlobalKey educationKey;
  late final GlobalKey projectsKey;
  late final GlobalKey skillsKey;
  late final GlobalKey contactsKey;
  late final ScrollController scrollController;
  late final RxBool showFloatingButton;

  @override
  void initState() {
    homeKey = GlobalKey();
    educationKey = GlobalKey();
    projectsKey = GlobalKey();
    skillsKey = GlobalKey();
    contactsKey = GlobalKey();

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
  void dispose() {
    scrollController.dispose();
    super.dispose();
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
            children: [
              Column(
                children: [
                  const SizedBox(height: 200),
                  UpperContainer(width: width),
                  const SizedBox(height: 100),
                  LowerContainer(
                    width: width,
                    interests: Interests.interests,
                    educationKey: educationKey,
                    projectsKey: projectsKey,
                    skillsKey: skillsKey,
                    contactsKey: contactsKey,
                  ),
                  Container(
                    width: width,
                    height: 0.1,
                    color: CustomColors.gray,
                  ),
                  Footer(
                    width: width,
                    scrollController: scrollController,
                  ),
                ],
              ),
              NavBar(
                key: homeKey,
                width: width,
                educationKey: educationKey,
                projectsKey: projectsKey,
                skillsKey: skillsKey,
                contactsKey: contactsKey,
                scrollController: scrollController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
