import 'dart:ui';
import 'package:flutter/cupertino.dart';

class AppColors{
  static const LinearGradient blueLinear = LinearGradient(
    colors: <Color>[
      Color(0xFF9DCEFF),
      Color(0xFF92A3FD),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const LinearGradient purpleLinear = LinearGradient(
    colors: <Color>[
      Color(0xFFEEA4CE),
      Color(0xFFC58BF2),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const Color blackColor=Color(0xFF1D1617);
  static const Color gray1Color=Color(0xFF7B6F72);
  static const Color gray2Color=Color(0xFFADA4A5);
  static const Color gray3Color=Color(0xFFDDDADA);
  static const Color cardShadow = Color(0xFFFFFFFF);
  static const Color borderColor=Color(0xFFF7F8F8);
  static const Color successColor=Color(0xFF42D742);
  static const Color warningColor=Color(0xFFFFD600);
  static const Color dangerColor=Color(0xFFFF0000);

}