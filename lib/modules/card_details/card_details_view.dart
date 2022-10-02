import 'package:crypto_ui/modules/card_details/card_details_logic.dart';
import 'package:crypto_ui/modules/card_details/card_details_pages/card_details_mobile.dart';
import 'package:crypto_ui/modules/card_details/card_details_pages/card_details_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';


class CardDetailsPage extends GetView<CardDetailsLogic> {
  const CardDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CardDetailsLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => CardDetailsPageMobilePortrait(sizingInformation: sizingInformation),
            landscape:(context) => CardDetailsPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait: (context) => CardDetailsPageTabletPortrait(sizingInformation: sizingInformation),
            landscape:(context) => CardDetailsPageTabletLandscape(sizingInformation: sizingInformation),
          ),
        );
      },
    );
  }
}
