import 'package:fish_hackathon/model/element_type.dart';
import 'package:fish_hackathon/state/map_view_state.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_view_model.g.dart';

@Riverpod(keepAlive: true)
class MapViewModel extends _$MapViewModel {
  @override
  MapViewState build() {
    return const MapViewState(
      elements: [
        MapElement(name: "工房", x: 0, y: 0, type: ElementType.room),
        MapElement(name: "365", x: 10, y: 10, type: ElementType.room),
        MapElement(name: "階段", x: 10, y: 10, type: ElementType.stairs),
      ],
    );
  }
}
