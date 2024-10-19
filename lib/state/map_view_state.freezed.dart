// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapViewState {
  List<MapElement> get elements => throw _privateConstructorUsedError;
  List<Room> get rooms => throw _privateConstructorUsedError;

  /// Create a copy of MapViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapViewStateCopyWith<MapViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapViewStateCopyWith<$Res> {
  factory $MapViewStateCopyWith(
          MapViewState value, $Res Function(MapViewState) then) =
      _$MapViewStateCopyWithImpl<$Res, MapViewState>;
  @useResult
  $Res call({List<MapElement> elements, List<Room> rooms});
}

/// @nodoc
class _$MapViewStateCopyWithImpl<$Res, $Val extends MapViewState>
    implements $MapViewStateCopyWith<$Res> {
  _$MapViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      elements: null == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<MapElement>,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapViewStateImplCopyWith<$Res>
    implements $MapViewStateCopyWith<$Res> {
  factory _$$MapViewStateImplCopyWith(
          _$MapViewStateImpl value, $Res Function(_$MapViewStateImpl) then) =
      __$$MapViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MapElement> elements, List<Room> rooms});
}

/// @nodoc
class __$$MapViewStateImplCopyWithImpl<$Res>
    extends _$MapViewStateCopyWithImpl<$Res, _$MapViewStateImpl>
    implements _$$MapViewStateImplCopyWith<$Res> {
  __$$MapViewStateImplCopyWithImpl(
      _$MapViewStateImpl _value, $Res Function(_$MapViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
    Object? rooms = null,
  }) {
    return _then(_$MapViewStateImpl(
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<MapElement>,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc

class _$MapViewStateImpl implements _MapViewState {
  const _$MapViewStateImpl(
      {final List<MapElement> elements = const [],
      final List<Room> rooms = const []})
      : _elements = elements,
        _rooms = rooms;

  final List<MapElement> _elements;
  @override
  @JsonKey()
  List<MapElement> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  final List<Room> _rooms;
  @override
  @JsonKey()
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'MapViewState(elements: $elements, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapViewStateImpl &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of MapViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapViewStateImplCopyWith<_$MapViewStateImpl> get copyWith =>
      __$$MapViewStateImplCopyWithImpl<_$MapViewStateImpl>(this, _$identity);
}

abstract class _MapViewState implements MapViewState {
  const factory _MapViewState(
      {final List<MapElement> elements,
      final List<Room> rooms}) = _$MapViewStateImpl;

  @override
  List<MapElement> get elements;
  @override
  List<Room> get rooms;

  /// Create a copy of MapViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapViewStateImplCopyWith<_$MapViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
