import 'package:crypto_ui/modules/signup/signup_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupPageMobilePortrait extends GetView<SignupLogic> {
  final SizingInformation? sizingInformation;

  const SignupPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignupLogic>();
    return Container();
  }
}
class SignupPageMobileLandscape extends GetView<SignupLogic> {
  final SizingInformation? sizingInformation;

  const SignupPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignupLogic>();
    return Container();
  }
}