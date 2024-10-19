import 'dart:math';

import 'package:fish_hackathon/model/map_element_type.dart';
import 'package:fish_hackathon/state/map_view_state.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_view_model.g.dart';

@Riverpod(keepAlive: true)
class MapViewModel extends _$MapViewModel {
  @override
  MapViewState build() {
    return const MapViewState(
      elements: [
        Wall(point: Point(0, 4000), end: Point(6000, 4000)),
        Floor(point: Point(0, 2000), width: 6000, height: 2000),
        Room(point: Point(0, 0), width: 2000, height: 2000, roomType: RoomType.computer363, door: Point(1000, 2000)),
        Room(point: Point(2000, 0), width: 2000, height: 2000, roomType: RoomType.computer364, door: Point(1000, 2000)),
        Room(point: Point(4000, 0), width: 2000, height: 2000, roomType: RoomType.computer365, door: Point(1000, 2000))
      ],
      rooms: [
        Room(point: Point(0, 0), width: 2000, height: 2000, roomType: RoomType.computer363, door: Point(1000, 2000)),
        Room(point: Point(2000, 0), width: 2000, height: 2000, roomType: RoomType.computer364, door: Point(1000, 2000)),
        Room(point: Point(4000, 0), width: 2000, height: 2000, roomType: RoomType.computer365, door: Point(1000, 2000))
      ]
    );
  }
}
