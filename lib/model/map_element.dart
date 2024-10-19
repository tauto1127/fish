import 'dart:math';

//TODO: タイプによって必要引数を変える

enum BeaconType { A, B, C }

enum RoomType {
  computer363('363'),
  computer364('364'),
  computer365('365');
  const RoomType(this.displayName);
  final String displayName;
  }

abstract class MapElement {
  const MapElement({
    required this.floorNum,
    required this.point,
  });
  final Point<int> point;
  final int floorNum;
}

class Floor extends MapElement {
  const Floor(
      {required super.point,
      required super.floorNum,
      required this.width,
      required this.height});
  final int width;
  final int height;
}

class Wall extends MapElement {
  const Wall(
      {required super.point, required super.floorNum, required this.end});
  final Point<int> end;
}

class Beacon extends MapElement {
  const Beacon(
      {required super.point, required super.floorNum, required this.beacon});
  final BeaconType beacon;
}

class Room extends MapElement {
  Room({
    required super.point,
    required super.floorNum,
    required this.width,
    required this.height,
    required this.roomType,
    required Point<int> doorOffset,
  }) {
    door = Point<int>(point.x+doorOffset.x, point.y+doorOffset.y);
  }
  final int width;
  final int height;
  final RoomType roomType;
  late Point<int> door;
}
