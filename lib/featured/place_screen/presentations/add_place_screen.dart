
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reno_places/providers/supabase_provider.dart';

import '../../../providers/app_router.dart';

class AddPlaceScreen extends HookConsumerWidget {
  const AddPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                context.pushNamed(
                  AppRoute.camera.name,
                );
              },
              child: Text('Camera'),
            ),
            Consumer(builder: (context, ref, child) {
              final filePath = ref.watch(imageCameraProvider);
              return filePath == '' ? const SizedBox() : Image.file(File(filePath), width: MediaQuery.of(context).size.width * 0.6, height: 400,);
            })

          ],
        ),
      ),
    );
  }
}
