import 'package:go_router/go_router.dart';
import 'package:lazy_load_dart_and_flutter/src/lessons/presentation/lessons_screen/lessons_screen.dart';
import 'package:lazy_load_dart_and_flutter/src/routing/routes/lesson_048_route.dart';
import 'package:lazy_load_dart_and_flutter/src/routing/routes/settings_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

enum AppRoute {
  lesson048('lesson_048'),
  home('/'),
  settings('settings');

  const AppRoute(this.path);

  final String path;
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: AppRoute.home.path,
    routes: [
      GoRoute(
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        builder: (context, state) => const LessonsScreen(),
        routes: [
          lesson048Route,
          settingsRoute,
        ],
      ),
    ],
  );
}
