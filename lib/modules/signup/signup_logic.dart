import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class SignupLogic extends GetxController {
  var signupFormKey = GlobalKey<FormBuilderState>();
  var signupNameFieldKey = GlobalKey<FormBuilderFieldState>();
  var signupEmailFieldKey = GlobalKey<FormBuilderFieldState>();
  var signupPassFieldKey = GlobalKey<FormBuilderFieldState>();
  var signupConPassFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
