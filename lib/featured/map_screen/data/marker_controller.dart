import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reno_places/featured/place_screen/data/place_repository.dart';
import 'package:reno_places/featured/place_screen/domains/place_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../providers/supabase_provider.dart';

part 'marker_controller.g.dart';

@riverpod
class MarkerController extends _$MarkerController {
  @override
  FutureOr<Set<Marker>> build() async {
    final Set<Marker> _markers = {};
     List<PlaceEntity> listPlaces= await getPlaces();
     listPlaces.forEach((element) {
       _markers.add(Marker(
           markerId: MarkerId(element.name!),
           position:  LatLng(element.lat!, element.lng!),
           infoWindow:
           InfoWindow(
             title: element.name!,
             ),
           icon: BitmapDescriptor.defaultMarker));
     });
     return _markers;
  }


  Future<List<PlaceEntity>> getPlaces(){
    final placeRepo = ref.watch(placeRepositoryProvider);
    final cancelToken = CancelToken();
    return placeRepo.getPlaces(
        ref.read(supabaseProvider)
    );
  }

}
