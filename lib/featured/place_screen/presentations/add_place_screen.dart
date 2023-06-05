
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../providers/app_router.dart';

class AddPlaceScreen extends HookConsumerWidget {
  const AddPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              context.pushNamed(
                AppRoute.camera.name,
              );
            },
            child: Text('Camera'),
          ),
        ],
      ),
    );
  }
}
