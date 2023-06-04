// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$placeRepositoryHash() => r'8ecfbd16952c766f29e8419c818b84e8f8867204';

/// See also [placeRepository].
@ProviderFor(placeRepository)
final placeRepositoryProvider = AutoDisposeProvider<PlaceRepository>.internal(
  placeRepository,
  name: r'placeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$placeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlaceRepositoryRef = AutoDisposeProviderRef<PlaceRepository>;
String _$fetchPlacesHash() => r'b2de26871b0d67dd7be5b4d2a3f8f031f01b173b';

/// See also [fetchPlaces].
@ProviderFor(fetchPlaces)
final fetchPlacesProvider =
    AutoDisposeFutureProvider<List<PlaceEntity>>.internal(
  fetchPlaces,
  name: r'fetchPlacesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchPlacesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchPlacesRef = AutoDisposeFutureProviderRef<List<PlaceEntity>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
