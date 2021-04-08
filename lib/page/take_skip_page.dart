import 'package:flutter/material.dart';
import 'package:list_utility_example/data/bikes.dart';
import 'package:list_utility_example/widget/value_widget.dart';

class TakeSkipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bikesStarting = bikes.take(2);
    final bikesAfter = bikes.skip(2);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValuesWidget(
          title: 'All',
          values: bikes.map((bike) => bike.name).toList(),
        ),
        const SizedBox(height: 24),
        ValuesWidget(
          title: 'Take 2',
          values: bikesStarting.map((bike) => bike.name).toList(),
        ),
        const SizedBox(height: 24),
        ValuesWidget(
          title: 'Skip 2',
          values: bikesAfter.map((bike) => bike.name).toList(),
        ),
      ],
    );
  }
}
