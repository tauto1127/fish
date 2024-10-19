import 'package:fish_hackathon/model/map_element.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navi_view_state.freezed.dart';

@freezed
class NaviViewState with _$NaviViewState {
  const factory NaviViewState({
    RoomType? destinationRoom,
  }) = _NaviViewState;
}
