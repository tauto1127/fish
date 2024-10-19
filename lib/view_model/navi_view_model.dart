import 'dart:math' as math;
import 'dart:math';

import 'package:fish_hackathon/model/direction.dart';
import 'package:fish_hackathon/model/map_element_type.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/model/map_model.dart';
import 'package:fish_hackathon/state/navi_view_state.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navi_view_model.g.dart';

@Riverpod(keepAlive: true)
class NaviViewModel extends _$NaviViewModel {
  @override
  NaviViewState build() {
    return const NaviViewState();
  }

  void setCurrentLocation({required FloorName floorName, required Point<int> point, required Direction direction}) {
    state = state.copyWith(floorName: floorName, currentPoint: point, currentDirection: direction);
  }

  Future<void> setMockBeaconData() async {
    var random = math.Random();
    while (true) {
      setCurrentLocation(floorName: FloorName.third, point: const Point<int>(5000, 3000), direction: Direction.west);
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  void setDestination(RoomType room) {
    state = state.copyWith(destinationRoom: room);
  }
}

@riverpod
int distanceFromMiddle(DistanceFromMiddleRef ref) {
  final state = ref.watch(naviViewModelProvider);
  final currentLocation = state.currentPoint;
  if (currentLocation == null) {
    return 0;
  }
  final mapState = ref.watch(mapViewModelProvider);
  Point<int> destinationPoint;
  try {
    destinationPoint = mapState.roomDict![state.destinationRoom!]!.door;
  } catch (e) {
    return 0;
  }
  final nextMidpoint = mapState.getNextMidpoint(currentPoint: currentLocation, destination: destinationPoint);
  // 距離の算出
  debugPrint(((currentLocation.x - nextMidpoint.x).abs() + (currentLocation.y - nextMidpoint.y).abs()) as String?);
  return ((currentLocation.x - nextMidpoint.x).abs() + (currentLocation.y - nextMidpoint.y).abs());
}
