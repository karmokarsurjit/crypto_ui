import 'package:crypto_ui/modules/reset/reset_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResetPageTabletPortrait extends GetView<ResetLogic> {

  final SizingInformation? sizingInformation;

  const ResetPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetLogic>();
    return Container();
  }
}

class ResetPageTabletLandscape extends GetView<ResetLogic> {

  final SizingInformation? sizingInformation;

  const ResetPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetLogic>();
    return Container();
  }
}