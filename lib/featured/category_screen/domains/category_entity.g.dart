// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryEntity _$$_CategoryEntityFromJson(Map<String, dynamic> json) =>
    _$_CategoryEntity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      subcategories: (json['subcategories'] as List<dynamic>?)
              ?.map((e) => CategoryEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoryEntityToJson(_$_CategoryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'subcategories': instance.subcategories,
    };
