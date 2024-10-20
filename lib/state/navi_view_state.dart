import 'dart:math';

import 'package:fish_hackathon/model/direction.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/model/map_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navi_view_state.freezed.dart';

@freezed
class NaviViewState with _$NaviViewState {
  const factory NaviViewState({
    FloorName? floorName,
    Point<int>? currentPoint,
    Direction? currentDirection,
    @Default(RelativeDirection.straight) RelativeDirection progressDirection,
    RoomType? destinationRoom,
  }) = _NaviViewState;
}
