import 'package:crypto_ui/modules/signin/signin_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SigninPageTabletPortrait extends GetView<SigninLogic> {

  final SizingInformation? sizingInformation;

  const SigninPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SigninLogic>();
    return Container();
  }
}

class SigninPageTabletLandscape extends GetView<SigninLogic> {

  final SizingInformation? sizingInformation;

  const SigninPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SigninLogic>();
    return Container();
  }
}