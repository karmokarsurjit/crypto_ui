import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/widgets/texts.dart';
import 'package:flutter/material.dart';

class Buttons {
  static regularButton({btnColor=ConstColors.BUTTON, texts, fontWeight, textSize, textColor, textAlign, onPressed, l=0.0,t=0.0,r=0.0,b=0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(l,t,r,b),
      child: SizedBox(
        height: 50.0,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => onPressed(),
          child: Texts.texts(texts: texts,fontWeight: fontWeight,textSize: textSize,colors: textColor,align: textAlign),
          style: ElevatedButton.styleFrom(
            backgroundColor: btnColor,
          ),
        ),
      ),
    );
  }

  static textButton({ texts, color, align, fontWeight, textSize, onPressed, l=0.0,t=0.0,r=0.0,b=0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(l,t,r,b),
      child: TextButton(
        style: ButtonStyle(alignment: align,),
        onPressed: () => onPressed(),
        child: Texts.texts(texts: texts,colors: color,fontWeight: fontWeight,textSize: textSize),
      ),
    );
  }
}