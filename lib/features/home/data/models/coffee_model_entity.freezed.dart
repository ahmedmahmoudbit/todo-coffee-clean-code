// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffee_model_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoffeeModelEntity _$CoffeeModelEntityFromJson(Map<String, dynamic> json) {
  return _CoffeeModelEntity.fromJson(json);
}

/// @nodoc
mixin _$CoffeeModelEntity {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  int get suger => throw _privateConstructorUsedError;
  @HiveField(2)
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoffeeModelEntityCopyWith<CoffeeModelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeModelEntityCopyWith<$Res> {
  factory $CoffeeModelEntityCopyWith(
          CoffeeModelEntity value, $Res Function(CoffeeModelEntity) then) =
      _$CoffeeModelEntityCopyWithImpl<$Res, CoffeeModelEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) int suger,
      @HiveField(2) int index});
}

/// @nodoc
class _$CoffeeModelEntityCopyWithImpl<$Res, $Val extends CoffeeModelEntity>
    implements $CoffeeModelEntityCopyWith<$Res> {
  _$CoffeeModelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? suger = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suger: null == suger
          ? _value.suger
          : suger // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoffeeModelEntityImplCopyWith<$Res>
    implements $CoffeeModelEntityCopyWith<$Res> {
  factory _$$CoffeeModelEntityImplCopyWith(_$CoffeeModelEntityImpl value,
          $Res Function(_$CoffeeModelEntityImpl) then) =
      __$$CoffeeModelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) int suger,
      @HiveField(2) int index});
}

/// @nodoc
class __$$CoffeeModelEntityImplCopyWithImpl<$Res>
    extends _$CoffeeModelEntityCopyWithImpl<$Res, _$CoffeeModelEntityImpl>
    implements _$$CoffeeModelEntityImplCopyWith<$Res> {
  __$$CoffeeModelEntityImplCopyWithImpl(_$CoffeeModelEntityImpl _value,
      $Res Function(_$CoffeeModelEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? suger = null,
    Object? index = null,
  }) {
    return _then(_$CoffeeModelEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      suger: null == suger
          ? _value.suger
          : suger // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffeeModelEntityImpl implements _CoffeeModelEntity {
  const _$CoffeeModelEntityImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.suger,
      @HiveField(2) required this.index});

  factory _$CoffeeModelEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffeeModelEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final int suger;
  @override
  @HiveField(2)
  final int index;

  @override
  String toString() {
    return 'CoffeeModelEntity(name: $name, suger: $suger, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeModelEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.suger, suger) || other.suger == suger) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, suger, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeModelEntityImplCopyWith<_$CoffeeModelEntityImpl> get copyWith =>
      __$$CoffeeModelEntityImplCopyWithImpl<_$CoffeeModelEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffeeModelEntityImplToJson(
      this,
    );
  }
}

abstract class _CoffeeModelEntity implements CoffeeModelEntity {
  const factory _CoffeeModelEntity(
      {@HiveField(0) required final String name,
      @HiveField(1) required final int suger,
      @HiveField(2) required final int index}) = _$CoffeeModelEntityImpl;

  factory _CoffeeModelEntity.fromJson(Map<String, dynamic> json) =
      _$CoffeeModelEntityImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  int get suger;
  @override
  @HiveField(2)
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$CoffeeModelEntityImplCopyWith<_$CoffeeModelEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
