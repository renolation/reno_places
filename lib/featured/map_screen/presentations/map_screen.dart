import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reno_places/featured/map_screen/data/marker_controller.dart';

import '../../../providers/supabase_provider.dart';

class MapScreen extends HookConsumerWidget {
   const MapScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Sample App'),
        elevation: 2,
      ),
      body: Consumer(builder: (context, ref, child) {
        final controllerProd = ref.watch(googleMapControllerProvider);
        final markerController = ref.watch(markerControllerProvider);
        return markerController.when(data: (data){
          print(data);
          return GoogleMap(
            onMapCreated: (controller) {
              controllerProd.whenData((value) => value.complete(controller));
            },
            markers: data,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            initialCameraPosition: const CameraPosition(
              target: LatLng(10.790428, 106.656582),
              zoom: 16.0,
            ),
          );
        },
          error: (err, stack) => Text('Error $err'),
          loading: () => Text('loading'),
        );
      }),
    );
  }
}
