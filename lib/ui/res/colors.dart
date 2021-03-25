import 'dart:ui';
import 'package:flutter/material.dart';

/// Цветовые алиасы, используемые в приложении
class AppColors {
  /// Темно-синий
  static const Color main = _darkBlue;
  
  /// Бело-серый
  static const Color background = _whiteSmoke;

  /// Фиолетовый
  static const Color secondary = _violet;
  
  /// Темно-серо-синий
  static const Color secondary2 = _darkGrayishBlue;
  
  /// Темно-серо-синий полупрозрачный
  static const Color inactiveBlack = _darkGrayishBlueHalfOpacity;
  
  /// Белый
  static const Color white = const Color(0xffFFFFFF);

  /// Цветовая палитра
  static const Color _darkBlue = const Color(0xff252849);

  static const Color _violet = const Color(0xff3B3E5B);

  static const Color _whiteSmoke = const Color(0xffF5F5F5);

  static const Color _darkGrayishBlue = const Color(0xff7C7E92);

  static const Color _darkGrayishBlueHalfOpacity = const Color.fromRGBO(124, 126, 146, 0.56);
}
