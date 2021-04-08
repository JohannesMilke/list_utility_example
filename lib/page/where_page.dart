import 'package:flutter/material.dart';
import 'package:list_utility_example/data/bikes.dart';
import 'package:list_utility_example/widget/value_widget.dart';

class WherePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bikesShortNamed = bikes.where((bike) => bike.name.length <= 5);
    final bikesStartsH = bikes.where((bike) => bike.name.startsWith('H'));
    final bikeMaxHP = bikes.singleWhere((bike) => bike.horsepower > 450);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValuesWidget(
          title: 'Bikes With H',
          values: bikesStartsH.map((bike) => bike.name).toList(),
        ),
        const SizedBox(height: 24),
        ValuesWidget(
          title: 'Bikes Short Names',
          values: bikesShortNamed.map((bike) => bike.name).toList(),
        ),
        const SizedBox(height: 24),
        ValueWidget(title: 'Best Bike', value: bikeMaxHP.name),
      ],
    );
  }
}
