// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommend_spot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendSpotModel {
  int get mapElementIndex => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String? get subText => throw _privateConstructorUsedError;

  /// Create a copy of RecommendSpotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendSpotModelCopyWith<RecommendSpotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendSpotModelCopyWith<$Res> {
  factory $RecommendSpotModelCopyWith(
          RecommendSpotModel value, $Res Function(RecommendSpotModel) then) =
      _$RecommendSpotModelCopyWithImpl<$Res, RecommendSpotModel>;
  @useResult
  $Res call({int mapElementIndex, String imagePath, String? subText});
}

/// @nodoc
class _$RecommendSpotModelCopyWithImpl<$Res, $Val extends RecommendSpotModel>
    implements $RecommendSpotModelCopyWith<$Res> {
  _$RecommendSpotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendSpotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapElementIndex = null,
    Object? imagePath = null,
    Object? subText = freezed,
  }) {
    return _then(_value.copyWith(
      mapElementIndex: null == mapElementIndex
          ? _value.mapElementIndex
          : mapElementIndex // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      subText: freezed == subText
          ? _value.subText
          : subText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendSpotModelImplCopyWith<$Res>
    implements $RecommendSpotModelCopyWith<$Res> {
  factory _$$RecommendSpotModelImplCopyWith(_$RecommendSpotModelImpl value,
          $Res Function(_$RecommendSpotModelImpl) then) =
      __$$RecommendSpotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int mapElementIndex, String imagePath, String? subText});
}

/// @nodoc
class __$$RecommendSpotModelImplCopyWithImpl<$Res>
    extends _$RecommendSpotModelCopyWithImpl<$Res, _$RecommendSpotModelImpl>
    implements _$$RecommendSpotModelImplCopyWith<$Res> {
  __$$RecommendSpotModelImplCopyWithImpl(_$RecommendSpotModelImpl _value,
      $Res Function(_$RecommendSpotModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendSpotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapElementIndex = null,
    Object? imagePath = null,
    Object? subText = freezed,
  }) {
    return _then(_$RecommendSpotModelImpl(
      mapElementIndex: null == mapElementIndex
          ? _value.mapElementIndex
          : mapElementIndex // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      subText: freezed == subText
          ? _value.subText
          : subText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RecommendSpotModelImpl implements _RecommendSpotModel {
  const _$RecommendSpotModelImpl(
      {required this.mapElementIndex, required this.imagePath, this.subText});

  @override
  final int mapElementIndex;
  @override
  final String imagePath;
  @override
  final String? subText;

  @override
  String toString() {
    return 'RecommendSpotModel(mapElementIndex: $mapElementIndex, imagePath: $imagePath, subText: $subText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendSpotModelImpl &&
            (identical(other.mapElementIndex, mapElementIndex) ||
                other.mapElementIndex == mapElementIndex) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.subText, subText) || other.subText == subText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, mapElementIndex, imagePath, subText);

  /// Create a copy of RecommendSpotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendSpotModelImplCopyWith<_$RecommendSpotModelImpl> get copyWith =>
      __$$RecommendSpotModelImplCopyWithImpl<_$RecommendSpotModelImpl>(
          this, _$identity);
}

abstract class _RecommendSpotModel implements RecommendSpotModel {
  const factory _RecommendSpotModel(
      {required final int mapElementIndex,
      required final String imagePath,
      final String? subText}) = _$RecommendSpotModelImpl;

  @override
  int get mapElementIndex;
  @override
  String get imagePath;
  @override
  String? get subText;

  /// Create a copy of RecommendSpotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendSpotModelImplCopyWith<_$RecommendSpotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
