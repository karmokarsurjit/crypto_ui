import 'package:crypto_ui/modules/splash/splash_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SplashPageTabletPortrait extends GetView<SplashLogic> {

  final SizingInformation? sizingInformation;

  const SplashPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    return Container();
  }
}

class SplashPageTabletLandscape extends GetView<SplashLogic> {

  final SizingInformation? sizingInformation;

  const SplashPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    return Container();
  }
}
