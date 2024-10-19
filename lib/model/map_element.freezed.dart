// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapElement {
  String get name => throw _privateConstructorUsedError;
  Point<num> get pointSW => throw _privateConstructorUsedError;
  Point<num> get pointSE => throw _privateConstructorUsedError;
  Point<num> get pointNW => throw _privateConstructorUsedError;
  Point<num> get pointNE => throw _privateConstructorUsedError;
  MapElementType get type => throw _privateConstructorUsedError;

  /// Create a copy of MapElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapElementCopyWith<MapElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapElementCopyWith<$Res> {
  factory $MapElementCopyWith(
          MapElement value, $Res Function(MapElement) then) =
      _$MapElementCopyWithImpl<$Res, MapElement>;
  @useResult
  $Res call(
      {String name,
      Point<num> pointSW,
      Point<num> pointSE,
      Point<num> pointNW,
      Point<num> pointNE,
      MapElementType type});
}

/// @nodoc
class _$MapElementCopyWithImpl<$Res, $Val extends MapElement>
    implements $MapElementCopyWith<$Res> {
  _$MapElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pointSW = null,
    Object? pointSE = null,
    Object? pointNW = null,
    Object? pointNE = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pointSW: null == pointSW
          ? _value.pointSW
          : pointSW // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      pointSE: null == pointSE
          ? _value.pointSE
          : pointSE // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      pointNW: null == pointNW
          ? _value.pointNW
          : pointNW // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      pointNE: null == pointNE
          ? _value.pointNE
          : pointNE // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MapElementType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapElementImplCopyWith<$Res>
    implements $MapElementCopyWith<$Res> {
  factory _$$MapElementImplCopyWith(
          _$MapElementImpl value, $Res Function(_$MapElementImpl) then) =
      __$$MapElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Point<num> pointSW,
      Point<num> pointSE,
      Point<num> pointNW,
      Point<num> pointNE,
      MapElementType type});
}

/// @nodoc
class __$$MapElementImplCopyWithImpl<$Res>
    extends _$MapElementCopyWithImpl<$Res, _$MapElementImpl>
    implements _$$MapElementImplCopyWith<$Res> {
  __$$MapElementImplCopyWithImpl(
      _$MapElementImpl _value, $Res Function(_$MapElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pointSW = null,
    Object? pointSE = null,
    Object? pointNW = null,
    Object? pointNE = null,
    Object? type = null,
  }) {
    return _then(_$MapElementImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pointSW: null == pointSW
          ? _value.pointSW
          : pointSW // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      pointSE: null == pointSE
          ? _value.pointSE
          : pointSE // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      pointNW: null == pointNW
          ? _value.pointNW
          : pointNW // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      pointNE: null == pointNE
          ? _value.pointNE
          : pointNE // ignore: cast_nullable_to_non_nullable
              as Point<num>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MapElementType,
    ));
  }
}

/// @nodoc

class _$MapElementImpl implements _MapElement {
  const _$MapElementImpl(
      {required this.name,
      required this.pointSW,
      required this.pointSE,
      required this.pointNW,
      required this.pointNE,
      required this.type});

  @override
  final String name;
  @override
  final Point<num> pointSW;
  @override
  final Point<num> pointSE;
  @override
  final Point<num> pointNW;
  @override
  final Point<num> pointNE;
  @override
  final MapElementType type;

  @override
  String toString() {
    return 'MapElement(name: $name, pointSW: $pointSW, pointSE: $pointSE, pointNW: $pointNW, pointNE: $pointNE, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapElementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pointSW, pointSW) || other.pointSW == pointSW) &&
            (identical(other.pointSE, pointSE) || other.pointSE == pointSE) &&
            (identical(other.pointNW, pointNW) || other.pointNW == pointNW) &&
            (identical(other.pointNE, pointNE) || other.pointNE == pointNE) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, pointSW, pointSE, pointNW, pointNE, type);

  /// Create a copy of MapElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapElementImplCopyWith<_$MapElementImpl> get copyWith =>
      __$$MapElementImplCopyWithImpl<_$MapElementImpl>(this, _$identity);
}

abstract class _MapElement implements MapElement {
  const factory _MapElement(
      {required final String name,
      required final Point<num> pointSW,
      required final Point<num> pointSE,
      required final Point<num> pointNW,
      required final Point<num> pointNE,
      required final MapElementType type}) = _$MapElementImpl;

  @override
  String get name;
  @override
  Point<num> get pointSW;
  @override
  Point<num> get pointSE;
  @override
  Point<num> get pointNW;
  @override
  Point<num> get pointNE;
  @override
  MapElementType get type;

  /// Create a copy of MapElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapElementImplCopyWith<_$MapElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
