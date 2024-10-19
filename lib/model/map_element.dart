import 'dart:math';

import 'package:fish_hackathon/model/Rooms.dart';
import 'package:fish_hackathon/model/map_element_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

//TODO: タイプによって必要引数を変える

enum BeaconType {
  A,
  B,
  C
}
enum RoomType {
  Computer363,
  Computer364,
  Computer365
}
abstract class MapElement {
  const MapElement({
    required Point point,
  });
}

class Floor extends MapElement {
  const Floor({
    required super.point, 
    required int width, 
    required int height
  });
}

class Wall extends MapElement {
  const Wall({
    required super.point,
    required Point end
  });
}

class Beacon extends MapElement {
  const Beacon({
    required super.point,
    required BeaconType beacon
  });
}

class Door extends MapElement {
  const Door({
    required super.point
  });
}

class Room extends MapElement {
  const Room({
    required super.point,
    required int width, 
    required int height,
    required RoomType room,
    required Door door,
  });
}
