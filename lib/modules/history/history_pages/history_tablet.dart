import 'package:crypto_ui/modules/history/history_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HistoryPageTabletPortrait extends GetView<HistoryLogic> {

  final SizingInformation? sizingInformation;

  const HistoryPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HistoryLogic>();
    return Container();
  }
}

class HistoryPageTabletLandscape extends GetView<HistoryLogic> {

  final SizingInformation? sizingInformation;

  const HistoryPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HistoryLogic>();
    return Container();
  }
}