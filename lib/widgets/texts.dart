import 'package:crypto_ui/shared/constants/colors.dart';
import 'package:crypto_ui/shared/constants/font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts {

  static texts({texts, colors = ConstColors.TEXTWHITE, textSize = FontSizes.REGULAR, fontWeight = FontWeight.w400, align, uds = 0.0, lrs = 0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs, vertical: uds),
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

  static textStyles({colors=ConstColors.TEXTWHITE,textSize=FontSizes.MEDIUM,fontWeight}){
    return  GoogleFonts.poppins(textStyle: TextStyle(color: colors, fontSize: textSize, fontWeight: fontWeight,));
}

}
