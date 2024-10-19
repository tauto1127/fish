import 'package:fish_hackathon/model/element_type.dart';
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

  void setDestination(int index) {
    state = state.copyWith(destinationIndex: index);
  }
}
