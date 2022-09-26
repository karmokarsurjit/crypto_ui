import 'package:crypto_ui/modules/splash/spalsh_page/splashpage_mobile.dart';
import 'package:crypto_ui/modules/splash/spalsh_page/splashpage_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'splash_logic.dart';

class SplashPage extends GetView<SplashLogic> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => SplashPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => SplashPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => SplashPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => SplashPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
