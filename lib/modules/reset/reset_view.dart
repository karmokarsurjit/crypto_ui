import 'package:crypto_ui/modules/reset/reset_pages/resetpage_mobile.dart';
import 'package:crypto_ui/modules/reset/reset_pages/resetpage_tablet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'reset_logic.dart';

class ResetPage extends GetView<ResetLogic> {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Get.find<ResetLogic>();

   return ResponsiveBuilder(
     builder: (context, sizingInformation) {
       return ScreenTypeLayout(
         mobile: OrientationLayoutBuilder(
           portrait: (context) => ResetPageMobilePortrait(sizingInformation: sizingInformation),
           landscape:(context) => ResetPageMobileLandscape(sizingInformation: sizingInformation),
         ),
         tablet: OrientationLayoutBuilder(
           portrait: (context) => ResetPageTabletPortrait(sizingInformation: sizingInformation),
           landscape:(context) => ResetPageTabletLandscape(sizingInformation: sizingInformation),
         ),
       );
     },
   );
  }
}
