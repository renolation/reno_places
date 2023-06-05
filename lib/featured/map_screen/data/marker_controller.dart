import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
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
     List<PlaceEntity> listPlaces= await getPlaces();
    final Set<Marker> markers = convertPlaceToMarker(listPlaces);
    return markers;
  }


  Future<List<PlaceEntity>> getPlaces(){
    final placeRepo = ref.watch(placeRepositoryProvider);
    final cancelToken = CancelToken();
    return placeRepo.getPlaces(
        ref.read(supabaseProvider)
    );
  }

  Set<Marker> convertPlaceToMarker(List<PlaceEntity> listPlaces){
    final Set<Marker> markers = {};
    for (var element in listPlaces) {
      markers.add(Marker(
          markerId: MarkerId(element.name!),
          position:  LatLng(element.lat!, element.lng!),
          infoWindow:
          InfoWindow(
            title: element.name!,
          ),
          icon: BitmapDescriptor.defaultMarker));
    }
    return markers;
  }

  void getAround(Position position, double radius) async {
    // const double radius = 50.0; // in kilometers
    const double conversionFactor = 0.009;
    List<PlaceEntity> listPlaces = await getPlaces();
    final Set<Marker> markers = convertPlaceToMarker(listPlaces);

    Set<Marker> nearbyPlaces = markers.where((place) {
      double latDiff = position.latitude - place.position.latitude;
      double lngDiff = position.longitude - place.position.longitude;

      double latBoundary = conversionFactor * radius;
      double lngBoundary = conversionFactor * radius;

      bool withinLatBoundary = (latDiff >= -latBoundary) && (latDiff <= latBoundary);
      bool withinLngBoundary = (lngDiff >= -lngBoundary) && (lngDiff <= lngBoundary);

      return withinLatBoundary && withinLngBoundary;
    }).toSet();
    state =  state.whenData((value) => value = nearbyPlaces);
  }

}
