import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/text_styles.dart';

/// Карточка интересного места для отображения в списке интересных мест
class SightCard extends StatelessWidget {
  /// Модель с данными места
  final Sight _sight;

  /// Конструктор
  const SightCard({
    Key key,
    @required Sight sight,
  })  : _sight = sight,
        super(key: key);

  /// Возвращает виджет, визуально разделенный на две части: верхнюю и нижнюю.
  /// Верхняя содержит изображение-превью места, подпись с типом места и
  /// кнопку "хочу посетить", нижняя - название или аннотацию.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 8,
        top: 8,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          children: [
            _SightPreview(_sight),
            _SightAnnotation(_sight),
          ],
        ),
      ),
    );
  }
}

class _SightPreview extends StatelessWidget {
  const _SightPreview(this._sight);

  final Sight _sight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 96,
          color: Colors.indigo,
        ),
        Positioned(
          left: 16,
          top: 16,
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
}

class _SightAnnotation extends StatelessWidget {
  const _SightAnnotation(this._sight);

  final Sight _sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: 16,
              right: 16,
            ),
            child: Text(
              _sight.name,
              style: const TextStyles.text(AppColors.secondary),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 4,
                right: 16,
                bottom: 16,
              ),
              child: Text(
                _sight.details,
                style: const TextStyles.small(AppColors.secondary2),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
