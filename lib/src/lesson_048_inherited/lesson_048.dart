import 'package:flutter/material.dart';
import 'package:lazy_load_dart_and_flutter/src/lesson_048_inherited/lesson_048_step_1.dart';

class Lesson048 extends StatelessWidget {
  const Lesson048({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Урок 048'),
      ),
      body: const Lesson048Step1(),
    );
  }
}
