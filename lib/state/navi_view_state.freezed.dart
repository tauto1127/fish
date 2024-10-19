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
  int get destinationIndex => throw _privateConstructorUsedError;

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
  $Res call({int destinationIndex});
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
    Object? destinationIndex = null,
  }) {
    return _then(_value.copyWith(
      destinationIndex: null == destinationIndex
          ? _value.destinationIndex
          : destinationIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int destinationIndex});
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
    Object? destinationIndex = null,
  }) {
    return _then(_$NaviViewStateImpl(
      destinationIndex: null == destinationIndex
          ? _value.destinationIndex
          : destinationIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NaviViewStateImpl implements _NaviViewState {
  const _$NaviViewStateImpl({this.destinationIndex = 0});

  @override
  @JsonKey()
  final int destinationIndex;

  @override
  String toString() {
    return 'NaviViewState(destinationIndex: $destinationIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NaviViewStateImpl &&
            (identical(other.destinationIndex, destinationIndex) ||
                other.destinationIndex == destinationIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destinationIndex);

  /// Create a copy of NaviViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NaviViewStateImplCopyWith<_$NaviViewStateImpl> get copyWith =>
      __$$NaviViewStateImplCopyWithImpl<_$NaviViewStateImpl>(this, _$identity);
}

abstract class _NaviViewState implements NaviViewState {
  const factory _NaviViewState({final int destinationIndex}) =
      _$NaviViewStateImpl;

  @override
  int get destinationIndex;

  /// Create a copy of NaviViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NaviViewStateImplCopyWith<_$NaviViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
