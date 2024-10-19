// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommend_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendViewState {
  List<RecommendSpotModel> get spots => throw _privateConstructorUsedError;
  List<RecommendSpotModel> get filteredSpots =>
      throw _privateConstructorUsedError;

  /// Create a copy of RecommendViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendViewStateCopyWith<RecommendViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendViewStateCopyWith<$Res> {
  factory $RecommendViewStateCopyWith(
          RecommendViewState value, $Res Function(RecommendViewState) then) =
      _$RecommendViewStateCopyWithImpl<$Res, RecommendViewState>;
  @useResult
  $Res call(
      {List<RecommendSpotModel> spots, List<RecommendSpotModel> filteredSpots});
}

/// @nodoc
class _$RecommendViewStateCopyWithImpl<$Res, $Val extends RecommendViewState>
    implements $RecommendViewStateCopyWith<$Res> {
  _$RecommendViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spots = null,
    Object? filteredSpots = null,
  }) {
    return _then(_value.copyWith(
      spots: null == spots
          ? _value.spots
          : spots // ignore: cast_nullable_to_non_nullable
              as List<RecommendSpotModel>,
      filteredSpots: null == filteredSpots
          ? _value.filteredSpots
          : filteredSpots // ignore: cast_nullable_to_non_nullable
              as List<RecommendSpotModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendViewStateImplCopyWith<$Res>
    implements $RecommendViewStateCopyWith<$Res> {
  factory _$$RecommendViewStateImplCopyWith(_$RecommendViewStateImpl value,
          $Res Function(_$RecommendViewStateImpl) then) =
      __$$RecommendViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RecommendSpotModel> spots, List<RecommendSpotModel> filteredSpots});
}

/// @nodoc
class __$$RecommendViewStateImplCopyWithImpl<$Res>
    extends _$RecommendViewStateCopyWithImpl<$Res, _$RecommendViewStateImpl>
    implements _$$RecommendViewStateImplCopyWith<$Res> {
  __$$RecommendViewStateImplCopyWithImpl(_$RecommendViewStateImpl _value,
      $Res Function(_$RecommendViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spots = null,
    Object? filteredSpots = null,
  }) {
    return _then(_$RecommendViewStateImpl(
      spots: null == spots
          ? _value._spots
          : spots // ignore: cast_nullable_to_non_nullable
              as List<RecommendSpotModel>,
      filteredSpots: null == filteredSpots
          ? _value._filteredSpots
          : filteredSpots // ignore: cast_nullable_to_non_nullable
              as List<RecommendSpotModel>,
    ));
  }
}

/// @nodoc

class _$RecommendViewStateImpl implements _RecommendViewState {
  const _$RecommendViewStateImpl(
      {final List<RecommendSpotModel> spots = const [],
      final List<RecommendSpotModel> filteredSpots = const []})
      : _spots = spots,
        _filteredSpots = filteredSpots;

  final List<RecommendSpotModel> _spots;
  @override
  @JsonKey()
  List<RecommendSpotModel> get spots {
    if (_spots is EqualUnmodifiableListView) return _spots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spots);
  }

  final List<RecommendSpotModel> _filteredSpots;
  @override
  @JsonKey()
  List<RecommendSpotModel> get filteredSpots {
    if (_filteredSpots is EqualUnmodifiableListView) return _filteredSpots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredSpots);
  }

  @override
  String toString() {
    return 'RecommendViewState(spots: $spots, filteredSpots: $filteredSpots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendViewStateImpl &&
            const DeepCollectionEquality().equals(other._spots, _spots) &&
            const DeepCollectionEquality()
                .equals(other._filteredSpots, _filteredSpots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_spots),
      const DeepCollectionEquality().hash(_filteredSpots));

  /// Create a copy of RecommendViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendViewStateImplCopyWith<_$RecommendViewStateImpl> get copyWith =>
      __$$RecommendViewStateImplCopyWithImpl<_$RecommendViewStateImpl>(
          this, _$identity);
}

abstract class _RecommendViewState implements RecommendViewState {
  const factory _RecommendViewState(
      {final List<RecommendSpotModel> spots,
      final List<RecommendSpotModel> filteredSpots}) = _$RecommendViewStateImpl;

  @override
  List<RecommendSpotModel> get spots;
  @override
  List<RecommendSpotModel> get filteredSpots;

  /// Create a copy of RecommendViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendViewStateImplCopyWith<_$RecommendViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
