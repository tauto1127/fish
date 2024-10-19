import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommend_spot_model.freezed.dart';

@freezed
class RecommendSpotModel with _$RecommendSpotModel {
  const factory RecommendSpotModel({
    required int mapElementIndex,
    required String imagePath,
    String? subText,
  }) = _RecommendSpotModel;
}
