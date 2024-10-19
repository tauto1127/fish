import 'dart:math';

import 'package:fish_hackathon/model/map_element_type.dart';
import 'package:fish_hackathon/model/map_model.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_view_model.g.dart';

@Riverpod(keepAlive: true)
class MapViewModel extends _$MapViewModel {
  @override
  MapModel build() {
    return MapModel(
      floorName: FloorName.third,
      elements: [
        const Wall(point: Point<int>(0, 4000), end: Point<int>(6000, 4000), floorNum: 3),
        const Floor(point: Point<int>(0, 2000), width: 6000, height: 2000, floorNum: 3),
        const Wall(point: Point<int>(0, 2000), end: Point<int>(6000, 2000), floorNum: 3),
        Room(
            point: const Point<int>(0, 0),
            width: 2000,
            height: 2000,
            roomType: RoomType.computer365,
            doorOffset: const Point<int>(1000, 2000),
            floorNum: 3),
        Room(
            point: const Point<int>(2000, 0),
            width: 2000,
            height: 2000,
            roomType: RoomType.computer364,
            doorOffset: const Point<int>(1000, 2000),
            floorNum: 3),
        Room(
            point: const Point<int>(4000, 0),
            width: 2000,
            height: 2000,
            roomType: RoomType.computer363,
            doorOffset: const Point<int>(1000, 2000),
            floorNum: 3)
      ],
    );
  }
}
