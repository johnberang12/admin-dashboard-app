import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum SidebarItem {
  dashboard(value: 'Dashboard', iconData: Icons.dashboard),
  units(value: 'Units', iconData: Icons.business),
  tenants(value: 'Tenats', iconData: Icons.group),
  notices(value: 'Notices', iconData: Icons.campaign),
  settings(value: 'Settings', iconData: Icons.settings);

  const SidebarItem({required this.value, required this.iconData});
  final String value;
  final IconData iconData;
}

final selectedRouteProvider = StateProvider<String>((ref) {
  return SidebarItem.dashboard.name;
});

class ScaffoldWithSideBar extends ConsumerWidget {
  const ScaffoldWithSideBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  SidebarItem getSideBarItem(AdminMenuItem item) {
    for (var value in SidebarItem.values) {
      if (item.route == value.name) {
        return value;
      }
    }
    return SidebarItem.dashboard;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRoute = ref.watch(selectedRouteProvider);
    final sideBarkey = ValueKey(Random().nextInt(1000000));
    return AdminScaffold(
      appBar: AppBar(title: const Text('Admin Panel with GoRouter Demo')),
      body: navigationShell,
      sideBar: SideBar(
          key: sideBarkey,
          activeBackgroundColor: Colors.white,
          onSelected: (item) {
            final index = getSideBarItem(item).index;
            ref
                .read(selectedRouteProvider.notifier)
                .update((state) => item.route ?? '');

            navigationShell.goBranch(
              index,
              // A common pattern when using bottom navigation bars is to support
              // navigating to the initial location when tapping the item that is
              // already active. This example demonstrates how to support this behavior,
              // using the initialLocation parameter of goBranch.
              initialLocation: index == navigationShell.currentIndex,
            );
          },
          items: SidebarItem.values
              .map((e) => AdminMenuItem(
                  title: e.value, icon: e.iconData, route: e.name))
              .toList(),
          selectedRoute: selectedRoute),
    );
  }
}



































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


// final sidebarItemProvider = StateProvider<SidebarItem>((ref) {
//   return SidebarItem.dashboard;
// });

// class ScaffoldWithSideBar extends ConsumerWidget {
//   const ScaffoldWithSideBar({super.key, required this.navigationShell});
//   final StatefulNavigationShell navigationShell;

//   SidebarItem getSideBarItem(AdminMenuItem item) {
//     for (var value in SidebarItem.values) {
//       if (item.route == value.name) {
//         return value;
//       }
//     }
//     return SidebarItem.dashboard;
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final sidebarItem = ref.watch(sidebarItemProvider);

//     final sideBarkey = ValueKey(Random().nextInt(1000000));
//     return AdminScaffold(
//       appBar: AppBar(title: const Text('Admin Panel with GoRouter Demo')),
//       body: navigationShell,
//       sideBar: SideBar(
//           key: sideBarkey,
//           activeBackgroundColor: Colors.white,
//           onSelected: (item) {
//             final sidebarItem = getSideBarItem(item);
//             ref
//                 .read(sidebarItemProvider.notifier)
//                 .update((state) => sidebarItem);

//             final index = sidebarItem.index;
//             navigationShell.goBranch(index,
//                 initialLocation: index == navigationShell.currentIndex);
//           },
//           items: SidebarItem.values
//               .map((e) => AdminMenuItem(
//                   title: e.value, icon: e.iconData, route: e.name))
//               .toList(),
//           selectedRoute: sidebarItem.name),
//     );
//   }
// }
