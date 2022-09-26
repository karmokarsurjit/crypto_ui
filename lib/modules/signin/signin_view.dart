import 'package:crypto_ui/modules/signin/signin_pages/signin_mobile.dart';
import 'package:crypto_ui/modules/signin/signin_pages/signin_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'signin_logic.dart';

class SigninPage extends GetView<SigninLogic> {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SigninLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => SigninPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => SigninPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => SigninPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => SigninPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
