import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TextFields {

  static formField({key,validator,name,fontWeight,letterSpace,hint,inputType,hidden=false,l=20.0,t=10.0,r=20.0,b=0.0}){
    return Padding(
      padding: EdgeInsets.fromLTRB(l,t,r,b),
      child: FormBuilderTextField(
        key: key,
        name: name,
        style: Texts.textStyles(textSize: FontSizes.MEDIUM,colors: ConstColors.TEXTWHITE),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Texts.textStyles(textSize: FontSizes.MEDIUM,colors: ConstColors.TEXTGREY,fontWeight: fontWeight,letterSpace: letterSpace),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ConstColors.FIELD_OUTLINE_FOCUSED),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ConstColors.FIELD_OUTLINE_ENABLED),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ConstColors.FIELD_OUTLINE_ERROR),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ConstColors.FIELD_OUTLINE_ERROR),
          ),
        ),
        validator: validator,
        keyboardType: inputType,
        obscureText: hidden,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}