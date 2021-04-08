import 'package:flutter/material.dart';
import 'package:list_utility_example/data/bikes.dart';
import 'package:list_utility_example/widget/value_widget.dart';

class EveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isHighHorsepower = bikes.every((bike) => bike.horsepower >= 200);

    return Center(
      child: ValueWidget(
        title: 'All High Horsepower?',
        value: isHighHorsepower.toString(),
      ),
    );
  }
}
