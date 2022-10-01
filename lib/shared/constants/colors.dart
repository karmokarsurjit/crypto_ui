import 'package:flutter/material.dart';

class ConstColors {
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color TRANSPARENT = Color(0x00000000);
  static const Color GREY = Color(0xFF8D8D8D);
  static const Color BLUE = Color(0xFF4B12EF);
  static const Color RED = Color(0xFFFD3131);

  static const Color BACKGROUND = Color(0xFF141414);
  static const Color BUTTON = Color(0xFF4B12EF);
  static const Color FIELD_OUTLINE_ENABLED = Color(0xFF8D8D8D);
  static const Color FIELD_OUTLINE_FOCUSED = Color(0xFFFFFFFF);
  static const Color FIELD_OUTLINE_ERROR = Color(0xFFFD3131);

  static const Color TEXTWHITE = Color(0xFFFFFFFF);
  static const Color TEXTGREY = Color(0xFF8D8D8D);
  static const Color TEXTBLUE = Color(0xFF4B12EF);

  static const Color BTC_BACK_COLOR = Color.fromARGB(50, 246, 84, 62);
  static const Color ETH_BACK_COLOR = Color.fromARGB(50, 99, 116, 195);
  static const Color LTC_BACK_COLOR = Color.fromARGB(50, 48, 224, 161);
  static const Color XRP_BACK_COLOR = Color.fromARGB(50, 99, 143, 254);

}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
