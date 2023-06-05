import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reno_places/featured/category_screen/presentations/category_screen.dart';
import 'package:reno_places/featured/home_screen/presentations/home_screen.dart';
import 'package:reno_places/featured/map_screen/presentations/map_screen.dart';
import 'package:reno_places/featured/place_screen/presentations/place_screen.dart';

enum AppRoute {
  home,
  category,
  categories, place, map,
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: "/home",
        name: AppRoute.home.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return NoTransitionPage(key: state.pageKey, child: const HomeScreen());
        },
      ),
      GoRoute(
        path: "/map",
        name: AppRoute.map.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return NoTransitionPage(key: state.pageKey, child: const MapScreen());
        },
      ),
      GoRoute(
        path: "/place",
        name: AppRoute.place.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return NoTransitionPage(key: state.pageKey, child: const PlaceScreen());
        },
      ),
      GoRoute(
        path: "/categories",
        name: AppRoute.categories.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return NoTransitionPage(key: state.pageKey, child: const CategoryScreen());
        },
      ),
    ],
  );
});
