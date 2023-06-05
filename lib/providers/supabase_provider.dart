import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' as hook;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseProvider = hook.Provider<SupabaseClient>((ref) {
  throw UnimplementedError();
});

final googleMapControllerProvider =
FutureProvider<Completer>((ref) async {
  final controller = Completer<GoogleMapController>();
  return controller;
});