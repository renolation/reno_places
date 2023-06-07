import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

final supabaseProvider = Provider<sb.SupabaseClient>((ref) {
  throw UnimplementedError();
});

final imageCameraProvider = StateProvider<String>((ref) => '');
// final isDoneProvider = StateProvider<bool>((ref) => false);