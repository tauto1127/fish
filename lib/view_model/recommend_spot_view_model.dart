import 'package:fish_hackathon/model/recommend_spot_model.dart';
import 'package:fish_hackathon/state/recommend_view_state.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recommend_spot_view_model.g.dart';

@Riverpod(keepAlive: true)
class RecommendSpotViewModel extends _$RecommendSpotViewModel {
  final spots = [
    const RecommendSpotModel(mapElementIndex: 0, imagePath: "assets/image/squid.jpg", subText: "11:30~13:00"),
    const RecommendSpotModel(mapElementIndex: 1, imagePath: "assets/image/map.webp")
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
    final filteredSpots = spots.where((element) => mapState[element.mapElementIndex].name.contains(query)).toList();
    state = state.copyWith(filteredSpots: filteredSpots);
  }
}