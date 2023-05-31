import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reno_places/featured/category_screen/domains/category_entity.dart';


part 'place_entity.freezed.dart';
part 'place_entity.g.dart';

List<PlaceEntity> listCategoryFromJson(String str) =>
    List<PlaceEntity>.from(json.decode(str).map((x) => PlaceEntity.fromJson(x)));

@freezed
class PlaceEntity with _$PlaceEntity  {


  const factory PlaceEntity({

    int? id,

    String? name,

    String? image,

    CategoryEntity? category,

    int? lat,

    int? lng,

    String? address,

    String? note,



  }) = _PlaceEntity;

  factory PlaceEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaceEntityFromJson(json);
}