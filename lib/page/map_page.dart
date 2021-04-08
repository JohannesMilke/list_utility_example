import 'package:flutter/material.dart';
import 'package:list_utility_example/data/bikes.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final allHorsepower = bikes.map((bike) {
      final horsepower = bike.horsepower.toString();

      return Text(
        horsepower,
        style: TextStyle(fontSize: 20, color: Colors.red),
      );
    }).toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'All Bike\'s Horsepower',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        ...allHorsepower,
      ],
    );
  }
}
