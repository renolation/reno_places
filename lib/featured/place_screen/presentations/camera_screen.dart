
import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import '../../../providers/supabase_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CameraScreen extends HookConsumerWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fileImage = useState('');
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
        actions: [
          TextButton(
            onPressed: () {
              ref.read(imageCameraProvider.notifier).state = fileImage.value;
            },
            child: Text('OK'),
          ),
        ],
      ),
      body: CameraAwesomeBuilder.awesome(
        saveConfig: SaveConfig.photo(
          pathBuilder: (sensors) async {
            final Directory extDir = await getTemporaryDirectory();
            final testDir = await Directory('${extDir.path}/camerawesome').create(recursive: true);
              final String filePath =
                  '${testDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';

              fileImage.value = filePath;
              return SingleCaptureRequest(filePath, sensors.first);
          },
        ),
        sensorConfig: SensorConfig.single(
          aspectRatio: CameraAspectRatios.ratio_4_3,
          flashMode: FlashMode.auto,
          sensor: Sensor.position(SensorPosition.back),
          zoom: 0.0,
        ),
        onMediaTap: (mediaCapture) {
          // OpenFile.open(mediaCapture.);
          // print(mediaCapture.status);
        },
      ),
    );
  }
}
