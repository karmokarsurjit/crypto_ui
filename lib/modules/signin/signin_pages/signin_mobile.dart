import 'package:crypto_ui/modules/signin/signin_logic.dart';
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

class SigninPageMobilePortrait extends GetView<SigninLogic> {
  final SizingInformation? sizingInformation;

  const SigninPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SigninLogic>();
    return Scaffold(
        backgroundColor: ConstColors.BACKGROUND,
        appBar: Views.defAppBarView(
          texts: "Sign in",
          icon: SvgPicture.asset(Images.scannerIcon),
        ),
        body: ListView(
          children: [
            FormBuilder(
              key: controller.signinFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts.texts(
                      texts: "Mail", align: TextAlign.left, l: 20.0, t: 10.0),
                  TextFields.formField(
                    key: controller.emailFieldKey,
                    name: 'email',
                    hint: "Crypto@gmail.com",
                    inputType: TextInputType.emailAddress,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: "Email is empty"),
                      FormBuilderValidators.email(
                          errorText: "Email is not valid")
                    ]),
                    b: 20.0,
                  ),
                  Texts.texts(
                      texts: "Password", align: TextAlign.left, l: 20.0),
                  TextFields.formField(
                    key: controller.passFieldKey,
                    name: 'password',
                    hint: ". . . . . . . . ",
                    inputType: TextInputType.visiblePassword,
                    hidden: true,
                    fontWeight: FontWeight.w900,
                    letterSpace: 2.0,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: "Password is not given"),
                      FormBuilderValidators.minLength(8,
                          allowEmpty: false,
                          errorText: "Password must be at least 8 characters")
                    ]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Buttons.textButton(
                  texts: "Forgot password?",
                  color: ConstColors.TEXTGREY,
                  fontWeight: FontWeight.w500,
                  b: 10.0,
                  r: 10.0,
                  t: 10.0,
                  onPressed: () {
                    Get.toNamed(AppRoutes.RECOVERY);
                  }),
            ),
            Buttons.regularButton(
              texts: "Sign in",
              fontWeight: FontWeight.w500,
              btnColor: ConstColors.BUTTON,
              textSize: FontSizes.MEDIUM,
              onPressed: () {
                // if (controller.signinFormKey.currentState!.validate()) {
                //   controller.signinFormKey.currentState!.save();
                Get.offNamed(AppRoutes.HOMEPAGE_1);
                // }
              },
              r: 20.0,
              l: 20.0,
              b: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texts.texts(
                    texts: "You are not registered ?",
                    textSize: FontSizes.REGULAR),
                Buttons.textButton(
                    texts: "Create an account",
                    color: ConstColors.BUTTON,
                    fontWeight: FontWeight.w500,
                    textSize: FontSizes.REGULAR,
                    onPressed: () {
                      Get.toNamed(AppRoutes.SIGNUP);
                    }),
              ],
            ),
          ],
        ));
  }
}

class SigninPageMobileLandscape extends GetView<SigninLogic> {
  final SizingInformation? sizingInformation;

  const SigninPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SigninLogic>();
    return Container();
  }
}
