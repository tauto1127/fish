import 'dart:math';

import 'package:fish_hackathon/model/Rooms.dart';
import 'package:fish_hackathon/model/map_element/map_element.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../floor.freezed.dart';

class Floor extends MapElement with _$Floor {
  const factory Floor({
    required Point point,
    required int width,
    required int height
  }) = _Floor;
}