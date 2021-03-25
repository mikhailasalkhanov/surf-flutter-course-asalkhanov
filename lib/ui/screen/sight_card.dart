import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings/strings.dart';
import 'package:places/ui/res/text_styles.dart';

/// Карточка интересного места для отображения в списке интересных мест
class SightCard extends StatelessWidget {
  /// Модель с данными места
  final Sight _sight;

  /// Конструктор
  const SightCard(this._sight);

  /// Возвращает виджет, визуально разделенный на две части: верхнюю и нижнюю.
  /// Верхняя содержит изображение-превью места, подпись с типом места и
  /// кнопку "хочу посетить", нижняя - название или аннотацию.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          children: [
            _buildPreview(),
            _buildAnnotation(),
          ],
        ),
      ),
    );
  }

  Stack _buildPreview() {
    return Stack(
      children: [
        Container(
          height: 96,
          color: Colors.indigo,
        ),
        Positioned(
          top: 16,
          left: 16,
          width: 148,
          height: 18,
          child: Text(
            _sight.type,
            style: const TextStyles.smallBold(AppColors.white),
          ),
        ),
        Positioned(
          top: 19,
          right: 18,
          child: Container(
            width: 20,
            height: 18,
            color: Colors.lime,
          ),
        ),
      ],
    );
  }

  Stack _buildAnnotation() {
    return Stack(
      children: [
        Container(
          height: 92,
          color: AppColors.background,
        ),
        Positioned(
          top: 16,
          left: 16,
          width: 296,
          height: 40,
          child: Text(
            _sight.name,
            style: const TextStyles.text(AppColors.secondary),
          ),
        ),
        Positioned(
          left: 16,
          bottom: 16,
          width: 296,
          height: 18,
          child: const Text(
            Strings.sightCardShortcut,
            style: const TextStyles.small(AppColors.secondary2),
          ),
        ),
      ],
    );
  }
}
