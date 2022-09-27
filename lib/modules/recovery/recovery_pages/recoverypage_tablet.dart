import 'package:crypto_ui/modules/recovery/recovery_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RecoveryPageTabletPortrait extends GetView<RecoveryLogic> {

  final SizingInformation? sizingInformation;

  const RecoveryPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RecoveryLogic>();
    return Container();
  }
}

class RecoveryPageTabletLandscape extends GetView<RecoveryLogic> {

  final SizingInformation? sizingInformation;

  const RecoveryPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RecoveryLogic>();
    return Container();
  }
}