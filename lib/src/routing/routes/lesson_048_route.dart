import 'package:go_router/go_router.dart';
import 'package:lazy_load_dart_and_flutter/src/lesson_048_inherited/lesson_048.dart';
import 'package:lazy_load_dart_and_flutter/src/routing/app_router.dart';

final lesson048Route = GoRoute(
  path: AppRoute.lesson048.path,
  name: AppRoute.lesson048.name,
  builder: (context, state) => const Lesson048(),
);
