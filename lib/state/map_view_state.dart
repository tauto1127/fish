import 'package:fish_hackathon/model/map_element.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_view_state.freezed.dart';

@freezed
class MapViewState with _$MapViewState {
  const factory MapViewState({
    @Default([]) List<MapElement> elements,
    @Default([]) List<Room> rooms,
  }) = _MapViewState;
}
