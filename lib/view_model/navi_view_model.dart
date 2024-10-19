import 'dart:math' as math;
import 'dart:math';

import 'package:fish_hackathon/model/map_element_type.dart';
import 'package:fish_hackathon/model/map_element.dart';
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

  void setStartPoint({required Point<int> point}) {
    state = state.copyWith(
      startPoint: point,
      currentPoint: point
    );
  }

  void setCurrentPoint({required Point<int> point}) {
    state = state.copyWith(currentPoint: point);
  }

  Future<void> setMockBeaconData() async {
    var random = math.Random();
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      setCurrentPoint(point: Point<int>(random.nextInt(4000)+1000, random.nextInt(4000)+1000));
    }
  }

  void setDestination(RoomType room) {
    state = state.copyWith(destinationRoom: room);
  }
}
