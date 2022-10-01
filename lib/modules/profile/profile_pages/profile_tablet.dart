import 'package:crypto_ui/modules/profile/profile_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePageTabletPortrait extends GetView<ProfileLogic> {

  final SizingInformation? sizingInformation;

  const ProfilePageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Container();
  }
}

class ProfilePageTabletLandscape extends GetView<ProfileLogic> {

  final SizingInformation? sizingInformation;

  const ProfilePageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Container();
  }
}