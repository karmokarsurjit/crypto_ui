import 'package:flutter/material.dart';

class ConstColors {
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color TRANSPARENT = Color(0);
  static const Color GREY = Color(0xFF8D8D8D);
  static const Color BLUE = Color(0xFF4B12EF);

  static const Color BACKGROUND = Color(0xFF141414);
  static const Color BUTTON = Color(0xFF4B12EF);
  static const Color FIELD_OUTLINE = Color(0xFF8D8D8D);

  static const Color TEXTWHITE = Color(0xFFFFFFFF);
  static const Color TEXTBLUE = Color(0xFF4B12EF);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
