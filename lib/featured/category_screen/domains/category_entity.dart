import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';


part 'category_entity.freezed.dart';
part 'category_entity.g.dart';

List<CategoryEntity> listCategoryFromJson(String str) =>
    List<CategoryEntity>.from(json.decode(str).map((x) => CategoryEntity.fromJson(x)));

@freezed
class CategoryEntity with _$CategoryEntity  {


   const factory CategoryEntity({

    int? id,

    String? name,

    String? image,

     @JsonKey(name: 'sub_category') List<CategoryEntity>? subCategories,


  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);
}