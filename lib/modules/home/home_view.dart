import 'package:crypto_ui/modules/home/home_pages/homepages_mobile.dart';
import 'package:crypto_ui/modules/home/home_pages/homepages_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => HomePageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => HomePageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => HomePageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => HomePageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
