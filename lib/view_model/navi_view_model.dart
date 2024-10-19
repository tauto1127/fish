import 'dart:math' as math;
import 'dart:math';

import 'package:fish_hackathon/model/direction.dart';
import 'package:fish_hackathon/model/map_element_type.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/model/map_model.dart';
import 'package:fish_hackathon/state/navi_view_state.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navi_view_model.g.dart';

@Riverpod(keepAlive: true)
class NaviViewModel extends _$NaviViewModel {
  @override
  NaviViewState build() {
    return const NaviViewState();
  }

  void setCurrentLocation({required FloorName floorName, required Point<int> point, required Direction direction}) {
    state = state.copyWith(
      floorName: floorName,
      currentPoint: point,
      currentDirection: direction
    );
  }

  Future<void> setMockMovedToNextMidpointLocation({required Point<int> point, required Direction direction}) async {
    print("setNext called");
    await Future.delayed(const Duration(seconds: 5));
    print("5 seconds finished");
    setCurrentLocation(floorName: FloorName.third, point: point, direction: direction);
  }

  Future<void> setMockStartLocation() async {
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
