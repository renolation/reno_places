import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reno_places/featured/map_screen/data/map_controller.dart';
import 'package:reno_places/featured/map_screen/data/marker_controller.dart';
import 'package:geolocator/geolocator.dart';
import '../../../providers/supabase_provider.dart';

class MapScreen extends HookConsumerWidget {
   const MapScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Sample App'),
        elevation: 2,
        actions: [
          TextButton(
            onPressed: () async {
              Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
              ref.read(markerControllerProvider.notifier).getAround(position, 10);
            },
            child: Text('10KM'),
          ),
          TextButton(
            onPressed: () async {
              Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
              ref.read(markerControllerProvider.notifier).getAround(position, 200);
            },
            child: Text('200KM'),
          ),
        ],
      ),
      body: Consumer(builder: (context, ref, child) {
        final markerController = ref.watch(markerControllerProvider);
        return GoogleMap(
          onMapCreated: (controller) {
            ref.read(mapControllerProvider.notifier).onCreate(controller);
          },
          markers: markerController.value ?? {},
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          initialCameraPosition: const CameraPosition(
            target: LatLng(10.790428, 106.656582),
            zoom: 16.0,
          ),
        );
      }),
    );
  }
}
