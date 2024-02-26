import 'package:go_router/go_router.dart';
import 'package:lazy_load_dart_and_flutter/src/routing/app_router.dart';
import 'package:lazy_load_dart_and_flutter/src/settings/presentation/settings_screen/settings_screen.dart';

final settingsRoute = GoRoute(
  path: AppRoute.settings.path,
  name: AppRoute.settings.name,
  builder: (context, state) => const SettingsScreen(),
);
