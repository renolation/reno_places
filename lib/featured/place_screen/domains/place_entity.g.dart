// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceEntity _$$_PlaceEntityFromJson(Map<String, dynamic> json) =>
    _$_PlaceEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      category: json['category'] == null
          ? null
          : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>),
      lat: json['lat'] as int?,
      lng: json['lng'] as int?,
      address: json['address'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_PlaceEntityToJson(_$_PlaceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'category': instance.category,
      'lat': instance.lat,
      'lng': instance.lng,
      'address': instance.address,
      'note': instance.note,
    };
