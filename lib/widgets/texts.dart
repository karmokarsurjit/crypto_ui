import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts {

  static texts({texts, colors = ConstColors.TEXTWHITE, textSize = FontSizes.MEDIUM, fontWeight, align=TextAlign.center, l=0.0,t=0.0,r=0.0,b=0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(l,t,r,b),
      child: Text(
        texts,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
              color: colors, fontSize: textSize, fontWeight: fontWeight),
        ),
        textAlign: align,
      ),
    );
  }

  static textStyles({colors=ConstColors.TEXTWHITE,textSize=FontSizes.MEDIUM,fontWeight,letterSpace}){
    return  GoogleFonts.poppins(textStyle: TextStyle(color: colors, fontSize: textSize, fontWeight: fontWeight,letterSpacing: letterSpace));
}

}
