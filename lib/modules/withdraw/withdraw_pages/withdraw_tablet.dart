import 'package:crypto_ui/modules/withdraw/withdraw_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WithdrawPageTabletPortrait extends GetView<WithdrawLogic> {

  final SizingInformation? sizingInformation;

  const WithdrawPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WithdrawLogic>();
    return Container();
  }
}

class WithdrawPageTabletLandscape extends GetView<WithdrawLogic> {

  final SizingInformation? sizingInformation;

  const WithdrawPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<WithdrawLogic>();
    return Container();
  }
}