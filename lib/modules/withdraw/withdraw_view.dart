import 'package:crypto_ui/modules/withdraw/withdraw_pages/withdraw_mobile.dart';
import 'package:crypto_ui/modules/withdraw/withdraw_pages/withdraw_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'withdraw_logic.dart';

class WithdrawPage extends GetView<WithdrawLogic> {
  const WithdrawPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WithdrawLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => WithdrawPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => WithdrawPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => WithdrawPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => WithdrawPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
