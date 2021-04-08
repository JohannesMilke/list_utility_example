import 'package:flutter/material.dart';

class ValueWidget extends StatelessWidget {
  final String title;
  final String value;

  const ValueWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      );
}

class ValuesWidget extends StatelessWidget {
  final String title;
  final List<String> values;

  const ValuesWidget({
    Key? key,
    required this.title,
    required this.values,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          ...values
              .map((value) => Text(value, style: TextStyle(fontSize: 20)))
              .toList(),
        ],
      );
}
