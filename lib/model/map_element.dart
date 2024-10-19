import 'package:fish_hackathon/model/element_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_element.freezed.dart';

@freezed
class MapElement with _$MapElement {
  const factory MapElement({
    required String name,
    required int x,
    required int y,
    required ElementType type,
  }) = _MapElement;
}
