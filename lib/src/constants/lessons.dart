import 'package:flutter/material.dart';
import 'package:lazy_load_dart_and_flutter/src/lessons/domain/lesson.dart';

enum Modules {
  dartBasics(
    'Основы Dart',
    'Уроки c 1 по 17',
    Icons.looks_one,
    [
      Lesson(
        title: 'Пока пусто',
        icon: Icons.sync,
        route: '',
      ),
    ],
  ),
  flutterBasics(
    'Основы Flutter',
    'Уроки c 18 по 49',
    Icons.looks_two,
    [
      Lesson(
        title: '048 InheritedWidget, InheritedModel, InheritedNotifier',
        icon: Icons.looks_two_outlined,
        route: 'lesson048',
      ),
    ],
  ),
  dataBasics(
    'Основы работы с данными',
    'Уроки c 50 по 76',
    Icons.looks_3,
    [
      Lesson(
        title: 'Пока пусто',
        icon: Icons.sync,
        route: '',
      ),
    ],
  ),
  architecture(
    'Архитектура',
    'Уроки c 77 по 106',
    Icons.looks_4,
    [
      Lesson(
        title: 'Пока пусто',
        icon: Icons.sync,
        route: '',
      ),
    ],
  );

  const Modules(this.title, this.subtitle, this.icon, this.lessons);

  final String title;
  final String subtitle;
  final IconData icon;
  final List<Lesson> lessons;
}
