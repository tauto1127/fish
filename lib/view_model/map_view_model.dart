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
        MapElement(name: "廊下", pointSW: Point(0, 2000),  pointSE: Point(6000, 2000), pointNW: Point(0, 4000), pointNE: Point(6000, 4000), type: MapElementType.Floor),
        MapElement(name: "365", pointSW: Point(0, 0), pointSE: Point(2000, 0), pointNW: Point(0, 2000), pointNE: Point(2000, 2000), type: MapElementType.Room),
        MapElement(name: "364", pointSW: Point(2000, 0), pointSE: Point(4000, 0), pointNW: Point(2000, 2000), pointNE: Point(4000, 2000), type: MapElementType.Room),
        MapElement(name: "363", pointSW: Point(4000, 0), pointSE: Point(6000, 0), pointNW: Point(4000, 2000), pointNE: Point(2000, 2000), type: MapElementType.Room),
        MapElement(name: "壁", pointSW: Point(0, 4000), pointSE: Point(6000, 4000), pointNW: Point(0, 4000), pointNE: Point(6000, 4000), type: MapElementType.Wall),
      ],
    );
  }
}
