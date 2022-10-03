import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:flutter/material.dart';

class Buttons {

  static buttons({text,width = double.infinity,height = 60.0,onPressed,value = 0.0,circularValue = 0.0,colorValue, borderColor = ConstColors.BLUE}){
    return Padding(
      padding: EdgeInsets.all(value),
      child: MaterialButton(
        minWidth: width,
        height: height,
        onPressed: () => onPressed (),
        color: colorValue,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color:  borderColor,
          ),
          borderRadius: BorderRadius.circular(circularValue),
        ),
        child: Texts.texts(texts: text),
      ),
    );
  }

  static regularButton(
      {btnColor = ConstColors.BUTTON,
      texts,
      fontWeight,
      textSize,
      textColor,
      textAlign,
      onPressed,
      l = 0.0,
      t = 0.0,
      r = 0.0,
      b = 0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(l, t, r, b),
      child: SizedBox(
        height: 50.0,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => onPressed(),
          child: Texts.texts(
              texts: texts,
              fontWeight: fontWeight,
              textSize: textSize,
              colors: textColor,
              align: textAlign),
          style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
            side: BorderSide(color: ConstColors.BUTTON),
          ),
        ),
      ),
    );
  }

  static textButton(
      {texts,
      color,
      align,
      fontWeight,
      textSize,
      onPressed,
      l = 0.0,
      t = 0.0,
      r = 0.0,
      b = 0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(l, t, r, b),
      child: TextButton(
        style: ButtonStyle(
          alignment: align,
        ),
        onPressed: () => onPressed(),
        child: Texts.texts(
            texts: texts,
            colors: color,
            fontWeight: fontWeight,
            textSize: textSize),
      ),
    );
  }

  static iconTextButton({icon, texts, onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: MaterialButton(
        onPressed: () => onPressed(),
        child: Row(
          children: [
            Image.asset(icon,width: 30,height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                texts,
                style: Texts.textStyles(
                    colors: ConstColors.TEXTWHITE,
                    textSize: FontSizes.MEDIUM,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
