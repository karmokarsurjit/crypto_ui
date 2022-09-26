import 'package:crypto_ui/modules/introduction/introduction_pages/introduction_mobile.dart';
import 'package:crypto_ui/modules/introduction/introduction_pages/introduction_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'introduction_logic.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IntroductionLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => IntroPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => IntroPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => IntroPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => IntroPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
