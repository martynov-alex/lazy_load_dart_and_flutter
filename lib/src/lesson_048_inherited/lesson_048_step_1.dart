import 'package:flutter/material.dart';

class Lesson048Step1 extends StatelessWidget {
  const Lesson048Step1({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleInherited();
  }
}

class ExampleInherited extends StatelessWidget {
  const ExampleInherited({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: _DataOwnerStateful(),
    );
  }
}

class _DataOwnerStateful extends StatefulWidget {
  const _DataOwnerStateful();

  @override
  _DataOwnerStatefulState createState() => _DataOwnerStatefulState();
}

class _DataOwnerStatefulState extends State<_DataOwnerStateful> {
  var _value = 0;

  void increment() {
    setState(() => _value += 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _DataConsumerStateless(),
        ElevatedButton(
          onPressed: increment,
          child: const Text('Жми!'),
        ),
      ],
    );
  }
}

class _DataConsumerStateless extends StatelessWidget {
  const _DataConsumerStateless();

  @override
  Widget build(BuildContext context) {
    final value =
        context.findAncestorStateOfType<_DataOwnerStatefulState>()?._value ?? 0;
    return Column(
      children: [
        Text('$value'),
        const _DataConsumerStateful(),
      ],
    );
  }
}

class _DataConsumerStateful extends StatelessWidget {
  const _DataConsumerStateful();

  @override
  Widget build(BuildContext context) {
    final value =
        context.findAncestorStateOfType<_DataOwnerStatefulState>()?._value ?? 0;
    return Text('$value');
  }
}
