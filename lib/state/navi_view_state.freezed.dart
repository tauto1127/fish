// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navi_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NaviViewState {
  FloorName? get floorName => throw _privateConstructorUsedError;
  Point<int>? get currentPoint => throw _privateConstructorUsedError;
  Direction? get currentDirection => throw _privateConstructorUsedError;
  RoomType? get destinationRoom => throw _privateConstructorUsedError;

  /// Create a copy of NaviViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NaviViewStateCopyWith<NaviViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NaviViewStateCopyWith<$Res> {
  factory $NaviViewStateCopyWith(
          NaviViewState value, $Res Function(NaviViewState) then) =
      _$NaviViewStateCopyWithImpl<$Res, NaviViewState>;
  @useResult
  $Res call(
      {FloorName? floorName,
      Point<int>? currentPoint,
      Direction? currentDirection,
      RoomType? destinationRoom});
}

/// @nodoc
class _$NaviViewStateCopyWithImpl<$Res, $Val extends NaviViewState>
    implements $NaviViewStateCopyWith<$Res> {
  _$NaviViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NaviViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floorName = freezed,
    Object? currentPoint = freezed,
    Object? currentDirection = freezed,
    Object? destinationRoom = freezed,
  }) {
    return _then(_value.copyWith(
      floorName: freezed == floorName
          ? _value.floorName
          : floorName // ignore: cast_nullable_to_non_nullable
              as FloorName?,
      currentPoint: freezed == currentPoint
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as Point<int>?,
      currentDirection: freezed == currentDirection
          ? _value.currentDirection
          : currentDirection // ignore: cast_nullable_to_non_nullable
              as Direction?,
      destinationRoom: freezed == destinationRoom
          ? _value.destinationRoom
          : destinationRoom // ignore: cast_nullable_to_non_nullable
              as RoomType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NaviViewStateImplCopyWith<$Res>
    implements $NaviViewStateCopyWith<$Res> {
  factory _$$NaviViewStateImplCopyWith(
          _$NaviViewStateImpl value, $Res Function(_$NaviViewStateImpl) then) =
      __$$NaviViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FloorName? floorName,
      Point<int>? currentPoint,
      Direction? currentDirection,
      RoomType? destinationRoom});
}

/// @nodoc
class __$$NaviViewStateImplCopyWithImpl<$Res>
    extends _$NaviViewStateCopyWithImpl<$Res, _$NaviViewStateImpl>
    implements _$$NaviViewStateImplCopyWith<$Res> {
  __$$NaviViewStateImplCopyWithImpl(
      _$NaviViewStateImpl _value, $Res Function(_$NaviViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NaviViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? floorName = freezed,
    Object? currentPoint = freezed,
    Object? currentDirection = freezed,
    Object? destinationRoom = freezed,
  }) {
    return _then(_$NaviViewStateImpl(
      floorName: freezed == floorName
          ? _value.floorName
          : floorName // ignore: cast_nullable_to_non_nullable
              as FloorName?,
      currentPoint: freezed == currentPoint
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as Point<int>?,
      currentDirection: freezed == currentDirection
          ? _value.currentDirection
          : currentDirection // ignore: cast_nullable_to_non_nullable
              as Direction?,
      destinationRoom: freezed == destinationRoom
          ? _value.destinationRoom
          : destinationRoom // ignore: cast_nullable_to_non_nullable
              as RoomType?,
    ));
  }
}

/// @nodoc

class _$NaviViewStateImpl implements _NaviViewState {
  const _$NaviViewStateImpl(
      {this.floorName,
      this.currentPoint,
      this.currentDirection,
      this.destinationRoom});

  @override
  final FloorName? floorName;
  @override
  final Point<int>? currentPoint;
  @override
  final Direction? currentDirection;
  @override
  final RoomType? destinationRoom;

  @override
  String toString() {
    return 'NaviViewState(floorName: $floorName, currentPoint: $currentPoint, currentDirection: $currentDirection, destinationRoom: $destinationRoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NaviViewStateImpl &&
            (identical(other.floorName, floorName) ||
                other.floorName == floorName) &&
            (identical(other.currentPoint, currentPoint) ||
                other.currentPoint == currentPoint) &&
            (identical(other.currentDirection, currentDirection) ||
                other.currentDirection == currentDirection) &&
            (identical(other.destinationRoom, destinationRoom) ||
                other.destinationRoom == destinationRoom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, floorName, currentPoint, currentDirection, destinationRoom);

  /// Create a copy of NaviViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NaviViewStateImplCopyWith<_$NaviViewStateImpl> get copyWith =>
      __$$NaviViewStateImplCopyWithImpl<_$NaviViewStateImpl>(this, _$identity);
}

abstract class _NaviViewState implements NaviViewState {
  const factory _NaviViewState(
      {final FloorName? floorName,
      final Point<int>? currentPoint,
      final Direction? currentDirection,
      final RoomType? destinationRoom}) = _$NaviViewStateImpl;

  @override
  FloorName? get floorName;
  @override
  Point<int>? get currentPoint;
  @override
  Direction? get currentDirection;
  @override
  RoomType? get destinationRoom;

  /// Create a copy of NaviViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NaviViewStateImplCopyWith<_$NaviViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
