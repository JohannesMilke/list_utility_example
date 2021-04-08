import 'package:flutter/material.dart';
import 'package:list_utility_example/data/cars.dart';
import 'package:list_utility_example/widget/value_widget.dart';

class SortPage extends StatefulWidget {
  @override
  _SortPageState createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  @override
  Widget build(BuildContext context) {
    final sortedCars = cars..sort((a, b) => a.compareTo(b));

    return Center(
      child: ValuesWidget(title: 'Sorted Cars', values: sortedCars),
    );
  }
}
