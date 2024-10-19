import 'dart:math';

import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/model/direction.dart';

enum FloorName { first, second, third, fourth, fifth, rSixth, rSeventh }

class MapModel {
  MapModel({required this.floorName, required this.elements}) {
    final rooms = elements.whereType<Room>().toList();
    final roomTypes = rooms.map((room) => room.roomType);
    roomDict = Map.fromIterables(roomTypes, rooms);

    walls = elements.whereType<Wall>().toList();
    northSouthWalls =
        walls.where((wall) => wall.point.x == wall.end.x).toList();
    northSouthWalls.sort((a, b) => a.point.y.compareTo(b.point.y));
    eastWestWalls = walls.where((wall) => wall.point.y == wall.end.y).toList();
    eastWestWalls.sort((a, b) => a.point.x.compareTo(b.point.x));
  }
  final movementPadding = 200;
  FloorName floorName;
  List<MapElement> elements;
  Map<RoomType, Room>? roomDict;
  List<Wall> walls = List.empty();
  List<Wall> northSouthWalls = List.empty();
  List<Wall> eastWestWalls = List.empty();

  Direction getDirectionOfMovement(
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
    switch (getDirectionOfMovement(
        currentPoint: currentPoint, destination: destination)) {
      case Direction.north:
        for (Wall wall in eastWestWalls) {
          if (currentPoint.y <= wall.point.y - movementPadding &&
              _isWithinRange(
                  value: currentPoint.x,
                  start: wall.point.x,
                  end: wall.end.x)) {
            print("a");
            return Point(currentPoint.x, wall.point.y - movementPadding);
          }
        }
        break;
      case Direction.south:
        for (Wall wall in eastWestWalls.reversed) {
          if (wall.point.y + movementPadding <= currentPoint.y &&
              _isWithinRange(
                  value: currentPoint.x,
                  start: wall.point.x,
                  end: wall.end.x)) {
            print("b");
            return Point(currentPoint.x, wall.point.y + movementPadding);
          }
        }
        break;
      case Direction.east:
        for (Wall wall in northSouthWalls) {
          if (currentPoint.x <= wall.point.x - movementPadding &&
              _isWithinRange(
                  value: currentPoint.y,
                  start: wall.point.y,
                  end: wall.end.y)) {
            print("c");
            return Point(wall.point.x - movementPadding, currentPoint.y);
          }
        }
        break;
      case Direction.west:
        for (Wall wall in northSouthWalls.reversed) {
          if (wall.point.x + movementPadding <= currentPoint.x &&
              _isWithinRange(
                  value: currentPoint.y,
                  start: wall.point.y,
                  end: wall.end.y)) {
            print("d");
            return Point(wall.point.x + movementPadding, currentPoint.y);
          }
        }
        if (destination.x <= currentPoint.x) {
          if ((destination.y - currentPoint.y).isNegative) {
            for (Wall wall in eastWestWalls) {
              if (wall.point.y + movementPadding <= currentPoint.y &&
                  _isWithinRange(
                      value: currentPoint.y,
                      start: wall.point.y,
                      end: wall.end.y)) {
                print("d");
                return Point(-1, -1);
              }
            }
            print("e");
            return Point(destination.x, currentPoint.y);
          } else {
            for (Wall wall in eastWestWalls.reversed) {
              if (currentPoint.y <= wall.point.y - movementPadding &&
                  _isWithinRange(
                      value: currentPoint.y,
                      start: wall.point.y,
                      end: wall.end.y)) {
                        print("f");
                        return Point(-1, -1);
                      }
            }
            print("g");
            return Point(destination.x, currentPoint.y);
          }
        }
        break;
      default:
        print("h");
        return const Point(-1, -1);
    }
    print("j");
    return const Point(-1, -1);
  }

  bool _isWithinRange(
          {required int value, required int start, required int end}) =>
      (start <= value && value <= end);
}
