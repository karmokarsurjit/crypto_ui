import 'package:crypto_ui/modules/signup/signup_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupPageTabletPortrait extends GetView<SignupLogic> {

  final SizingInformation? sizingInformation;

  const SignupPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignupLogic>();
    return Container();
  }
}

class SignupPageTabletLandscape extends GetView<SignupLogic> {

  final SizingInformation? sizingInformation;

  const SignupPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignupLogic>();
    return Container();
  }
}