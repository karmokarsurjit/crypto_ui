import 'package:crypto_ui/modules/reset/reset_logic.dart';
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

class ResetPageMobilePortrait extends GetView<ResetLogic> {
  final SizingInformation? sizingInformation;

  const ResetPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      appBar: Views.defAppBarView(
        texts: "Password recovery",
        icon: SvgPicture.asset(Images.scannerIcon),
      ),
      body: Column(
        children: [
          FormBuilder(
            key: controller.resetFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts.texts(
                    texts: "Password", align: TextAlign.left, l: 20.0, t: 10.0),
                TextFields.formField(
                  key: controller.resetPassFieldKey,
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
                  key: controller.resetConPassFieldKey,
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
            texts: "Reestablish",
            fontWeight: FontWeight.w500,
            btnColor: ConstColors.BUTTON,
            textSize: FontSizes.MEDIUM,
            onPressed: () {
              if (controller.resetFormKey.currentState!.validate()) {
                controller.resetFormKey.currentState!.save();
                Get.toNamed(AppRoutes.SIGNIN);
              }
            },
            r: 20.0,
            l: 20.0,
          ),
        ],
      ),
    );
  }
}

class ResetPageMobileLandscape extends GetView<ResetLogic> {
  final SizingInformation? sizingInformation;

  const ResetPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<ResetLogic>();
    return Container();
  }
}
