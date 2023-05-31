import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reno_places/featured/category_screen/domains/category_entity.dart';
import 'package:reno_places/featured/place_screen/domains/place_entity.dart';

import '../data/place_repository.dart';

class PlaceScreen extends HookConsumerWidget {
  const PlaceScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              PlaceEntity placeEntity = PlaceEntity(
                name: 'phuoc',
              );
              ref.read(placeRepositoryProvider).addPlace(placeEntity: placeEntity);
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
