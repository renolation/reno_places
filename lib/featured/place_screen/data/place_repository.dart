import 'package:reno_places/featured/place_screen/domains/place_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:math';

import '../../../providers/supabase_provider.dart';
part 'place_repository.g.dart';

class PlaceRepository {
  PlaceRepository();

  final _client = Supabase.instance.client;

  Future<List<PlaceEntity>> getPlaces(SupabaseClient client) async {
    // final data = await client.from('category').select('id, name, sub_category(id, name)');
    final data = await client.from('place').select('*');

    final List list = data;
    print(list);
    return list.map((e) => PlaceEntity.fromJson(e)).toList();
  }

}


@riverpod
PlaceRepository placeRepository(PlaceRepositoryRef _) => PlaceRepository();

@riverpod
Future<List<PlaceEntity>> fetchPlaces(FetchPlacesRef ref) async {
  final placeRepo = ref.watch(placeRepositoryProvider);
  return placeRepo.getPlaces(
      ref.read(supabaseProvider)
  );
}