import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            toolbarHeight: 80,
            backgroundColor: Color(0xffEEEEEE),
          )),
      home: const HomePage(),
    );
  }
}




// enum SideBarItem {
//   dashboard(
//       value: 'Dashboard', iconData: Icons.dashboard, body: DashboardScreen()),
//   units(value: 'Units', iconData: Icons.business, body: UnitsScreen()),
//   tenants(value: 'Tenats', iconData: Icons.group, body: TenantsScreen()),
//   notices(value: 'Notices', iconData: Icons.campaign, body: NoticesScreen()),
//   settings(value: 'Settings', iconData: Icons.settings, body: SettingsScreen());

//   const SideBarItem(
//       {required this.value, required this.iconData, required this.body});
//   final String value;
//   final IconData iconData;
//   final Widget body;
// }

// final sideBarItemProvider =
//     StateProvider<SideBarItem>((ref) => SideBarItem.dashboard);

// class HomePage extends ConsumerWidget {
//   const HomePage({super.key});

//   SideBarItem getSideBarItem(AdminMenuItem item) {
//     for (var value in SideBarItem.values) {
//       if (item.route == value.name) {
//         return value;
//       }
//     }
//     return SideBarItem.dashboard;
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final sideBarItem = ref.watch(sideBarItemProvider);
//     final sideBarKey = ValueKey(Random().nextInt(1000000));
//     const String stringParam = 'String parameter';
//     const int intParam = 1000000;
//     return AdminScaffold(
//         appBar: AppBar(title: const Text('Admin Panel Demo')),
//         sideBar: SideBar(
//             key: sideBarKey,
//             activeBackgroundColor: Colors.white,
//             onSelected: (item) => ref
//                 .read(sideBarItemProvider.notifier)
//                 .update((state) => getSideBarItem(item)),
//             items: SideBarItem.values
//                 .map((e) => AdminMenuItem(
//                     title: e.value, icon: e.iconData, route: e.name))
//                 .toList(),
//             selectedRoute: sideBarItem.name),
//         body: ProviderScope(overrides: [
//           paramProvider.overrideWithValue((stringParam, intParam))
//         ], child: sideBarItem.body));
//   }
// }

// final paramProvider = Provider<(String, int)>((ref) {
//   throw UnimplementedError();
// });

// class DashboardScreen extends ConsumerWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final param = ref.watch(paramProvider);
//     return const Center(
//         child: Text(
//       'Dashboard Screen',
//       style: TextStyle(fontSize: 24),
//     ));
//   }
// }

// class UnitsScreen extends ConsumerWidget {
//   const UnitsScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final param = ref.watch(paramProvider);
//     return const Center(
//         child: Text(
//       'Units Screen',
//       style: TextStyle(fontSize: 24),
//     ));
//   }
// }

// class TenantsScreen extends StatelessWidget {
//   const TenantsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//         child: Text(
//       'Tenants Screen',
//       style: TextStyle(fontSize: 24),
//     ));
//   }
// }

// class NoticesScreen extends StatelessWidget {
//   const NoticesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//         child: Text(
//       'Notices Screen',
//       style: TextStyle(fontSize: 24),
//     ));
//   }
// }

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//         child: Text(
//       'Settings Screen',
//       style: TextStyle(fontSize: 24),
//     ));
//   }
// }
