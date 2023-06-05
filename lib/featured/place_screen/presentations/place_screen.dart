import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reno_places/featured/category_screen/domains/category_entity.dart';
import 'package:reno_places/featured/place_screen/domains/place_entity.dart';

import '../../../providers/app_router.dart';
import '../data/place_repository.dart';

class PlaceScreen extends HookConsumerWidget {
  const PlaceScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              context.pushNamed(
                AppRoute.addPlace.name,

              );
            },
            child: Text('Add Place'),
          ),
        ],
      ),
      body: Consumer(builder: (context, ref, child) {
        final placesList = ref.watch(fetchPlacesProvider);

        return placesList.when(data: (data){
          return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index){
                return Text(data[index].name!);
              });
        },
          error: (err, stack) => Text('Error $err'),
          loading: () =>
              Text('loading'),
        );
      }),
      
    );
  }
}
