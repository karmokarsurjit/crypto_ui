import 'package:crypto_ui/modules/verify/verify_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VerifyPageTabletPortrait extends GetView<VerifyLogic> {

  final SizingInformation? sizingInformation;

  const VerifyPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<VerifyLogic>();
    return Container();
  }
}

class VerifyPageTabletLandscape extends GetView<VerifyLogic> {

  final SizingInformation? sizingInformation;

  const VerifyPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<VerifyLogic>();
    return Container();
  }
}