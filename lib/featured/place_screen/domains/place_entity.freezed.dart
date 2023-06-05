// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceEntity _$PlaceEntityFromJson(Map<String, dynamic> json) {
  return _PlaceEntity.fromJson(json);
}

/// @nodoc
mixin _$PlaceEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  CategoryEntity? get category => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceEntityCopyWith<PlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEntityCopyWith<$Res> {
  factory $PlaceEntityCopyWith(
          PlaceEntity value, $Res Function(PlaceEntity) then) =
      _$PlaceEntityCopyWithImpl<$Res, PlaceEntity>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      CategoryEntity? category,
      double? lat,
      double? lng,
      String? address,
      String? note});

  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class _$PlaceEntityCopyWithImpl<$Res, $Val extends PlaceEntity>
    implements $PlaceEntityCopyWith<$Res> {
  _$PlaceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? address = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceEntityCopyWith<$Res>
    implements $PlaceEntityCopyWith<$Res> {
  factory _$$_PlaceEntityCopyWith(
          _$_PlaceEntity value, $Res Function(_$_PlaceEntity) then) =
      __$$_PlaceEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      CategoryEntity? category,
      double? lat,
      double? lng,
      String? address,
      String? note});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_PlaceEntityCopyWithImpl<$Res>
    extends _$PlaceEntityCopyWithImpl<$Res, _$_PlaceEntity>
    implements _$$_PlaceEntityCopyWith<$Res> {
  __$$_PlaceEntityCopyWithImpl(
      _$_PlaceEntity _value, $Res Function(_$_PlaceEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? address = freezed,
    Object? note = freezed,
  }) {
    return _then(_$_PlaceEntity(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceEntity implements _PlaceEntity {
  const _$_PlaceEntity(
      {this.id,
      this.name,
      this.image,
      this.category,
      this.lat,
      this.lng,
      this.address,
      this.note});

  factory _$_PlaceEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final CategoryEntity? category;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final String? address;
  @override
  final String? note;

  @override
  String toString() {
    return 'PlaceEntity(id: $id, name: $name, image: $image, category: $category, lat: $lat, lng: $lng, address: $address, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image, category, lat, lng, address, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceEntityCopyWith<_$_PlaceEntity> get copyWith =>
      __$$_PlaceEntityCopyWithImpl<_$_PlaceEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceEntityToJson(
      this,
    );
  }
}

abstract class _PlaceEntity implements PlaceEntity {
  const factory _PlaceEntity(
      {final int? id,
      final String? name,
      final String? image,
      final CategoryEntity? category,
      final double? lat,
      final double? lng,
      final String? address,
      final String? note}) = _$_PlaceEntity;

  factory _PlaceEntity.fromJson(Map<String, dynamic> json) =
      _$_PlaceEntity.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  CategoryEntity? get category;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  String? get address;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceEntityCopyWith<_$_PlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
