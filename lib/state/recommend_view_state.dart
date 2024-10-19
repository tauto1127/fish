import 'package:fish_hackathon/model/recommend_spot_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommend_view_state.freezed.dart';

@freezed
class RecommendViewState with _$RecommendViewState {
  const factory RecommendViewState({
    @Default([]) List<RecommendSpotModel> spots,
    @Default([]) List<RecommendSpotModel> filteredSpots,
  }) = _RecommendViewState;
}
