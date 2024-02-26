import 'package:flutter/material.dart';

@immutable
class Lesson {
  final String title;
  final IconData icon;
  final String route;

  const Lesson({
    required this.title,
    required this.icon,
    required this.route,
  });

  @override
  String toString() => 'Lesson(title: $title, icon: $icon, route: $route)';

  @override
  bool operator ==(covariant Lesson other) {
    if (identical(this, other)) return true;
    return other.title == title && other.icon == icon && other.route == route;
  }

  @override
  int get hashCode => title.hashCode ^ icon.hashCode ^ route.hashCode;
}
