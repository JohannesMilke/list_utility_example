import 'package:flutter/material.dart';
import 'package:list_utility_example/data/cars.dart';
import 'package:list_utility_example/widget/value_widget.dart';

class FromPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carsCopied = List<String>.from(cars);
    final isSame = carsCopied == cars;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValueWidget(
            title: 'Cars', value: '$cars \n Hashcode: ${cars.hashCode}'),
        const SizedBox(height: 32),
        ValueWidget(
          title: 'Cars Copied',
          value: '$carsCopied \n Hashcode: ${carsCopied.hashCode}',
        ),
        const SizedBox(height: 32),
        ValueWidget(title: 'Cars == Cars Copied', value: '$isSame'),
      ],
    );
  }
}
