// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_load_dart_and_flutter/src/constants/lessons.dart';
import 'package:lazy_load_dart_and_flutter/src/routing/app_router.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({super.key});

  @override
  State<LessonsScreen> createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
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
      body: ListView(
        shrinkWrap: true,
        children: Modules.values
            .map(
              (module) => ExpansionTile(
                leading: Icon(module.icon),
                title: Text(module.title),
                subtitle: Text(module.subtitle),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    restorationId: module.name,
                    itemCount: module.lessons.length,
                    itemBuilder: (context, index) {
                      final routeTitle = module.lessons[index].title;
                      final routeName = module.lessons[index].route;

                      return ListTile(
                        title: Text(routeTitle),
                        leading: Icon(module.lessons[index].icon),
                        onTap: routeName.isEmpty
                            ? null
                            : () => context.goNamed(routeName),
                      );
                    },
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
