import 'package:admin_dashboard_app/src/features/app_router/scaffold_with_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../admin_panel/screens.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/', routes: [
    StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return ScaffoldWithSideBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
                name: 'root',
                path: '/',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: DashboardScreen());
                }),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                name: 'units',
                path: '/units',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: UnitsScreen());
                }),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                name: 'tenants',
                path: '/tenants',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: TenantsScreen());
                }),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                name: 'notices',
                path: '/notices',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: NoticesScreen());
                }),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
                name: 'settings',
                path: '/settings',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: SettingsScreen());
                }),
          ]),
        ]),
  ]);
});

//
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///

//         enum RoutePath {
//   dashboard(path: '/'),
//   units(path: '/units'),
//   tenants(path: '/tenants'),
//   notices(path: '/notices'),
//   settings(path: '/settings');

//   const RoutePath({required this.path});
//   final String path;
// }

// StatefulShellRoute.indexedStack(
//     builder: (context, state, navigationShell) {
//       return ScaffoldWithSideBar(navigationShell: navigationShell);
//     },
//     branches: [
//       StatefulShellBranch(routes: [

//       ]),
//       StatefulShellBranch(routes: [

//       ]),
//       StatefulShellBranch(routes: [

//       ]),
//       StatefulShellBranch(routes: [

//       ]),
//       StatefulShellBranch(routes: [

//       ]),
//     ])
