

import 'package:crypto_ui/modules/card_details/card_details_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CardDetailsPageTabletPortrait extends GetView<CardDetailsLogic> {

  final SizingInformation? sizingInformation;

  const CardDetailsPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CardDetailsLogic>();
    return Container();
  }
}

class CardDetailsPageTabletLandscape extends GetView<CardDetailsLogic> {

  final SizingInformation? sizingInformation;

  const CardDetailsPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<CardDetailsLogic>();
    return Container();
  }
}