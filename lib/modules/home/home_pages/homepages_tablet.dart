import 'package:crypto_ui/modules/home/home_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePageTabletPortrait extends GetView<HomeLogic> {

  final SizingInformation? sizingInformation;

  const HomePageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();
    return Container();
  }
}

class HomePageTabletLandscape extends GetView<HomeLogic> {

  final SizingInformation? sizingInformation;

  const HomePageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeLogic>();
    return Container();
  }
}