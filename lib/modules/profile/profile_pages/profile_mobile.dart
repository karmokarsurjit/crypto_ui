import 'package:crypto_ui/modules/profile/profile_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePageMobilePortrait extends GetView<ProfileLogic> {
  final SizingInformation? sizingInformation;

  const ProfilePageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Container();
  }
}
class ProfilePageMobileLandscape extends GetView<ProfileLogic> {
  final SizingInformation? sizingInformation;

  const ProfilePageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ProfileLogic>();
    return Container();
  }
}