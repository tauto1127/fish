import 'dart:math';

import 'package:fish_hackathon/model/map_element_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_element.freezed.dart';

@freezed
class MapElement with _$MapElement {
  const factory MapElement({
    required String name,
    required Point pointSW,
    required Point pointSE,
    required Point pointNW,
    required Point pointNE,
    required MapElementType type,
  }) = _MapElement;
}
