import 'package:crypto_ui/modules/introduction/introduction_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroPageTabletPortrait extends GetView<IntroductionLogic> {

  final SizingInformation? sizingInformation;

  const IntroPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IntroductionLogic>();
    return Container();
  }
}

class IntroPageTabletLandscape extends GetView<IntroductionLogic> {

  final SizingInformation? sizingInformation;

  const IntroPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<IntroductionLogic>();
    return Container();
  }
}
