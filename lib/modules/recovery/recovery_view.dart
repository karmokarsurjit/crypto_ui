import 'package:crypto_ui/modules/recovery/recovery_pages/recoverypage_mobile.dart';
import 'package:crypto_ui/modules/recovery/recovery_pages/recoverypage_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'recovery_logic.dart';

class RecoveryPage extends GetView<RecoveryLogic> {
  const RecoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RecoveryLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => RecoveryPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => RecoveryPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => RecoveryPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => RecoveryPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
