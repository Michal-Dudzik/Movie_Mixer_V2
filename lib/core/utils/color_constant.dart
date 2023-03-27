import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA700B2 = fromHex('#b2fffaff');

  static Color gray900 = fromHex('#1a1a1d');

  static Color black9003f = fromHex('#3f000000');

  static Color indigo3001c = fromHex('#1c8277c5');

  static Color black900 = fromHex('#000000');

  static Color whiteA70026 = fromHex('#26ffffff');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA70001 = fromHex('#ffffff');

  static Color blueGray900 = fromHex('#2e294e');

  static Color pink600 = fromHex('#d8315b');

  static Color cyan600 = fromHex('#17bebb');

  static Color whiteA701 = fromHex('#ffffff');

  static Color whiteA700 = fromHex('#fffaff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
