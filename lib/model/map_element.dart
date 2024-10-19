import 'dart:math';

import 'package:fish_hackathon/model/Rooms.dart';
import 'package:fish_hackathon/model/map_element_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

//TODO: タイプによって必要引数を変える

enum BeaconType { A, B, C }

enum RoomType { Computer363, Computer364, Computer365 }

Map roomNameDict = {
  RoomType.Computer363: "363",
  RoomType.Computer364: "364",
  RoomType.Computer365: "365",
};

abstract class MapElement {
  const MapElement({
    required this.point,
  });
  final Point point;
}

class Floor extends MapElement {
  const Floor(
      {required super.point, required this.width, required this.height});
  final int width;
  final int height;
}

class Wall extends MapElement {
  const Wall({required super.point, required this.end});
  final Point end;
}

class Beacon extends MapElement {
  const Beacon({required super.point, required this.beacon});
  final BeaconType beacon;
}

class Room extends MapElement {
  const Room({
    required super.point,
    required this.width,
    required this.height,
    required this.room,
    required this.door,
  });
  final int width;
  final int height;
  final RoomType room;
  final Point door;
  Point getDoor() => door;
}
