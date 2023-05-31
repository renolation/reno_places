import 'package:reno_places/featured/place_screen/domains/place_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'place_repository.g.dart';

class PlaceRepository {
  PlaceRepository();

  final _client = Supabase.instance.client;

  Future addPlace({required PlaceEntity placeEntity}) async {
    await _client
        .from('place')
        .insert({'name': 'The Shire', 'image': '554', 'category_id': 1,});
  }

}


@riverpod
PlaceRepository placeRepository(PlaceRepositoryRef _) => PlaceRepository();