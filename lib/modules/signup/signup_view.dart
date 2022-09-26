import 'package:crypto_ui/modules/signup/signup_pages/signup_mobile.dart';
import 'package:crypto_ui/modules/signup/signup_pages/signup_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'signup_logic.dart';

class SignupPage extends GetView<SignupLogic> {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignupLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => SignupPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => SignupPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => SignupPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => SignupPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
