import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/model/recommend_spot_model.dart';
import 'package:fish_hackathon/state/recommend_view_state.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recommend_spot_view_model.g.dart';

@Riverpod(keepAlive: true)
class RecommendSpotViewModel extends _$RecommendSpotViewModel {
  final spots = [
    //食堂
    const RecommendSpotModel(mapElementIndex: 6, imagePath: "assets/image/IMG_0354.jpeg", subText: "11:30~13:00"),
    //イカボ
    const RecommendSpotModel(mapElementIndex: 7, imagePath: "assets/image/IMG_0359.jpeg"),
  ];

  @override
  RecommendViewState build() {
    return RecommendViewState(
      spots: spots,
      filteredSpots: spots,
    );
  }

  void filter(String query) {
    final mapState = ref.watch(mapViewModelProvider).elements;
    final filteredSpots = spots.where((RecommendSpotModel element) {
      MapElement el = mapState[element.mapElementIndex];
      if (el is Room) {
        if (el.roomType.displayName.contains(query)) {
          return true;
        }
      }
      return false;
    }).toList();
    state = state.copyWith(filteredSpots: filteredSpots);
  }
}
