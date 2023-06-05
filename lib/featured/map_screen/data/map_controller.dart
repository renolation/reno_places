import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_controller.g.dart';


@riverpod
class MapController extends _$MapController {

  @override
  Future<Completer<GoogleMapController>> build() async {
    final controller = Completer<GoogleMapController>();
    return controller;
  }

  void onCreate(GoogleMapController controller){
    state.whenData((value) => value.complete(controller));
  }

}