import 'package:crypto_ui/modules/transfer/transfer_pages/transfer_mobile.dart';
import 'package:crypto_ui/modules/transfer/transfer_pages/transfer_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'transfer_logic.dart';

class TransferPage extends GetView<TransferLogic> {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TransferLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => TransferPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => TransferPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => TransferPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => TransferPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
