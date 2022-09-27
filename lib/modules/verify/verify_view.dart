import 'package:crypto_ui/modules/verify/verify_pages/verifypage_mobile.dart';
import 'package:crypto_ui/modules/verify/verify_pages/verifypage_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'verify_logic.dart';

class VerifyPage extends GetView<VerifyLogic> {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<VerifyLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => VerifyPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => VerifyPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => VerifyPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => VerifyPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
