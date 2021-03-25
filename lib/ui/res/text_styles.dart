import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// Используется для создания стилей с предустановленными параметрами и
/// кастомным цветом [color].
/// Следует использовать с "const" при использовании
class TextStyles extends TextStyle {
  /// Цвет текста
  final Color color;

  /// Шрифт, подключается из ассетов в pubspec.yaml
  final String fontFamily = 'Roboto';
  
  /// Очень крупный жирный шрифт
  const TextStyles.largeTitle(this.color)
      : super(
          fontSize: 32,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        );
  
  /// Крупный жирный шрифт
  const TextStyles.title(this.color)
      : super(
          fontSize: 24,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        );

  /// Средний нежирный шрифт
  const TextStyles.subtitle(this.color)
      : super(
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
        );
  
  /// Обычный нежирный шрифт
  const TextStyles.text(this.color)
      : super(
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
        );
  
  /// Мелкий жирный шрифт
  const TextStyles.smallBold(this.color)
      : super(
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        );
  
  /// Мелкий нежирный шрифт
  const TextStyles.small(this.color)
      : super(
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
        );
  
  /// Мелкий жирный шрифт для кнопок
  const TextStyles.button(this.color)
      : super(
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        );
}
