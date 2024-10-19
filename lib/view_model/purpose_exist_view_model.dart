import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'purpose_exist_view_model.g.dart';

@Riverpod(keepAlive: true)
class PurposeExistViewModel extends _$PurposeExistViewModel {
  @override
  List<Room> build() {
    var state = ref.watch(mapViewModelProvider);
    return state.elements.whereType<Room>().toList();
  }

  void search(String query) {
    final mapState = ref.watch(mapViewModelProvider).elements;
    if (query.isEmpty) {
      state = mapState.whereType<Room>().toList();
      return;
    }
    final filterdSpots = state.where((Room element) {
      if (roomNameDict[element.room]!.contains(query)) {
        return true;
      }
      return false;
    }).toList();
    state = filterdSpots;
  }
}
