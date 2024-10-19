import 'dart:math';

import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/model/direction.dart';

class MapModel {
  final movementPadding = 200;
  MapModel({required this.elements}) {
    final rooms = elements.whereType<Room>().toList();
    final roomTypes = rooms.map((room) => room.roomType);
    roomDict = Map.fromIterables(roomTypes, rooms);

    walls = elements.whereType<Wall>().toList();
    northSouthWalls =
        walls.where((wall) => wall.point.x == wall.end.x).toList();
    northSouthWalls.sort((a, b) => a.point.y.compareTo(b.point.y));
    eastWestWalls = 
        walls.where((wall) => wall.point.y == wall.end.y).toList();
    eastWestWalls.sort((a, b) => a.point.x.compareTo(b.point.x));
  }
  List<MapElement> elements;
  Map<RoomType, Room>? roomDict;
  List<Wall> walls = List.empty();
  List<Wall> northSouthWalls = List.empty();
  List<Wall> eastWestWalls = List.empty();

  Direction _getDirectionOfMovement(
      {required Point<int> currentPoint, required Point<int> destination}) {
    int xDirectionDiff = destination.x - currentPoint.x;
    int yDirectionDiff = destination.y - currentPoint.y;

    if (yDirectionDiff.abs() > xDirectionDiff.abs()) {
      if (yDirectionDiff.isNegative) {
        return Direction.south;
      } else {
        return Direction.north;
      }
    } else {
      if (xDirectionDiff.isNegative) {
        return Direction.west;
      } else {
        return Direction.east;
      }
    }
  }

  Point<int> getNextMidpoint(
      {required Point<int> currentPoint, required Point<int> destination}) {
    switch (_getDirectionOfMovement(
        currentPoint: currentPoint, destination: destination)) {
      case Direction.north:
        for (Wall wall in eastWestWalls) {
          if (currentPoint.y<=wall.point.y-movementPadding && isWithinRange(value: currentPoint.x, start: wall.point.x, end: wall.end.x)) {
            return Point(currentPoint.x, wall.point.y-movementPadding);
          }
        }
        break;
      case Direction.south:
        for (Wall wall in eastWestWalls.reversed) {
          if (wall.point.y+movementPadding<= currentPoint.y && isWithinRange(value: currentPoint.x, start: wall.point.x, end: wall.end.x)) {
            return Point(currentPoint.x, wall.point.y+movementPadding);
          }
        }
        break;
      case Direction.east:
        for (Wall wall in northSouthWalls) {
          if (currentPoint.x<=wall.point.x-movementPadding && isWithinRange(value: currentPoint.y, start: wall.point.y, end: wall.end.y)) {
            return Point(wall.point.x-movementPadding, currentPoint.y);
          }
        }
        break;
      case Direction.west:
        for (Wall wall in northSouthWalls.reversed) {
          if (wall.point.x+movementPadding<= currentPoint.x && isWithinRange(value: currentPoint.y, start: wall.point.y, end: wall.end.y)) {
            return Point(wall.point.x+movementPadding, currentPoint.y);
          }
        }
        break;
    }
    return const Point(-1, -1);
  }

  bool isWithinRange({required int value, required int start, required int end}) => (start <= value&&value <= end);
}
