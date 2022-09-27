import 'package:crypto_ui/modules/recovery/recovery_logic.dart';
import 'package:crypto_ui/routes/app_routes.dart';
import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/buttons.dart';
import 'package:crypto_ui/widgets/text_fields.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:crypto_ui/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RecoveryPageMobilePortrait extends GetView<RecoveryLogic> {
  final SizingInformation? sizingInformation;

  const RecoveryPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RecoveryLogic>();
    return Scaffold(
      backgroundColor: ConstColors.BACKGROUND,
      appBar: Views.defAppBarView(texts: "Password recovery"),
      body: Column(
        children: [
          FormBuilder(
            key: controller.recoveryFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts.texts(texts: "Mail", l: 20.0),
                TextFields.formField(
                  key: controller.recoveryEmailFieldKey,
                  name: 'email',
                  hint: "Crypto@gmail.com",
                  inputType: TextInputType.emailAddress,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(
                          errorText: "Email is empty"),
                      FormBuilderValidators.email(
                          errorText: "Email is not valid")
                    ],
                  ),
                  b: 20.0,
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
              if (controller.recoveryFormKey.currentState!.validate()) {
                controller.recoveryFormKey.currentState!.save();
                Get.toNamed(AppRoutes.VERIFY);
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

class RecoveryPageMobileLandscape extends GetView<RecoveryLogic> {
  final SizingInformation? sizingInformation;

  const RecoveryPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<RecoveryLogic>();
    return Container();
  }
}
