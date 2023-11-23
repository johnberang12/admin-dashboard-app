import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final param = ref.watch(paramProvider);
    return const Center(
        child: Text(
      'Dashboard Screen',
      style: TextStyle(fontSize: 24),
    ));
  }
}

class UnitsScreen extends ConsumerWidget {
  const UnitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final param = ref.watch(paramProvider);
    return const Center(
        child: Text(
      'Units Screen',
      style: TextStyle(fontSize: 24),
    ));
  }
}

class TenantsScreen extends StatelessWidget {
  const TenantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Tenants Screen',
      style: TextStyle(fontSize: 24),
    ));
  }
}

class NoticesScreen extends StatelessWidget {
  const NoticesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Notices Screen',
      style: TextStyle(fontSize: 24),
    ));
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Settings Screen',
      style: TextStyle(fontSize: 24),
    ));
  }
}
