import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_load_dart_and_flutter/src/constants/lessons.dart';
import 'package:lazy_load_dart_and_flutter/src/routing/app_router.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Уроки'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.goNamed(AppRoute.settings.name),
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'lessonsListView',
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final routeTitle = lessons[index].title;
          final routeName = lessons[index].route;

          return ListTile(
            title: Text(routeTitle),
            leading: Icon(lessons[index].icon),
            onTap: () => context.goNamed(routeName),
          );
        },
      ),
    );
  }
}
