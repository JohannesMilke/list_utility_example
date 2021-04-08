import 'package:flutter/material.dart';
import 'package:list_utility_example/data/cars.dart';
import 'package:list_utility_example/widget/value_widget.dart';

class ContainsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hasLamborghini = cars.contains('Lamborghini');

    return Center(
      child: hasLamborghini
          ? ValueWidget(title: 'Best Sports Car', value: 'Lamborghini')
          : ValueWidget(title: 'Best Sports Car', value: 'None'),
    );
  }
}
