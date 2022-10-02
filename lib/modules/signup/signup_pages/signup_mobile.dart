import 'package:crypto_ui/modules/signup/signup_logic.dart';
import 'package:crypto_ui/routes/app_routes.dart';
import 'package:crypto_ui/shared/assets/images.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/buttons.dart';
import 'package:crypto_ui/widgets/text_fields.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupPageMobilePortrait extends GetView<SignupLogic> {
  final SizingInformation? sizingInformation;

  const SignupPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SignupLogic>();
    return Scaffold(
        backgroundColor: ConstColors.BACKGROUND,
        appBar: Views.defAppBarView(
          texts: "Sign up",
          icon: SvgPicture.asset(Images.scannerIcon),
        ),
        body: ListView(
          children: [
            FormBuilder(
              key: controller.signupFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts.texts(
                      texts: "Name", align: TextAlign.left, l: 20.0, t: 10.0),
                  TextFields.formField(
                    key: controller.signupNameFieldKey,
                    name: 'name',
                    hint: "Vlad",
                    inputType: TextInputType.name,
                    b: 20.0,
                    validator: FormBuilderValidators.required(
                        errorText: "Name is not given"),
                  ),
                  Texts.texts(texts: "Mail", align: TextAlign.left, l: 20.0),
                  TextFields.formField(
                    key: controller.signupEmailFieldKey,
                    name: 'email',
                    hint: "Crypto@gmail.com",
                    inputType: TextInputType.emailAddress,
                    b: 20.0,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: "Email is empty"),
                      FormBuilderValidators.email(
                          errorText: "Email is not valid"),
                    ]),
                  ),
                  Texts.texts(
                      texts: "Password",
                      align: TextAlign.left,
                      l: 20.0,
                      r: 20.0),
                  TextFields.formField(
                    key: controller.signupPassFieldKey,
                    name: 'password',
                    hint: ". . . . . . . . ",
                    inputType: TextInputType.visiblePassword,
                    hidden: true,
                    fontWeight: FontWeight.w900,
                    letterSpace: 2.0,
                    b: 20.0,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: "Password is not given"),
                      FormBuilderValidators.minLength(8,
                          allowEmpty: false,
                          errorText: "Password must be at least 8 characters")
                    ]),
                  ),
                  Texts.texts(
                      texts: "Confirm Password",
                      align: TextAlign.left,
                      l: 20.0,
                      r: 20.0),
                  TextFields.formField(
                    key: controller.signupConPassFieldKey,
                    name: 'con_password',
                    hint: ". . . . . . . . ",
                    inputType: TextInputType.visiblePassword,
                    hidden: true,
                    fontWeight: FontWeight.w900,
                    letterSpace: 2.0,
                    b: 20.0,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: "Confirm Password is not given"),
                      FormBuilderValidators.minLength(8,
                          allowEmpty: false,
                          errorText: "Password must be at least 8 characters")
                    ]),
                  ),
                ],
              ),
            ),
            Buttons.regularButton(
              texts: "Start Now",
              fontWeight: FontWeight.w500,
              btnColor: ConstColors.BUTTON,
              textSize: FontSizes.MEDIUM,
              onPressed: () {
                if (controller.signupFormKey.currentState!.validate()) {
                  controller.signupFormKey.currentState!.save();
                  Get.offNamed(AppRoutes.HOMEPAGE);
                }
              },
              r: 20.0,
              l: 20.0,
              b: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texts.texts(
                    texts: "Already have an account?",
                    textSize: FontSizes.REGULAR),
                Buttons.textButton(
                    texts: "Sign in now",
                    color: ConstColors.BUTTON,
                    fontWeight: FontWeight.w500,
                    textSize: FontSizes.REGULAR,
                    onPressed: () {
                      Get.toNamed(AppRoutes.SIGNIN);
                    }),
              ],
            ),
          ],
        ));
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
