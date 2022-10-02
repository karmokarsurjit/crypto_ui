import 'package:crypto_ui/modules/transfer/transfer_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TransferPageTabletPortrait extends GetView<TransferLogic> {

  final SizingInformation? sizingInformation;

  const TransferPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TransferLogic>();
    return Container();
  }
}

class TransferPageTabletLandscape extends GetView<TransferLogic> {

  final SizingInformation? sizingInformation;

  const TransferPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<TransferLogic>();
    return Container();
  }
}