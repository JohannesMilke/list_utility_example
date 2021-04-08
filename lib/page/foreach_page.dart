import 'package:flutter/material.dart';
import 'package:list_utility_example/data/cars.dart';

class ForEachPage extends StatefulWidget {
  @override
  _ForEachPageState createState() => _ForEachPageState();
}

class _ForEachPageState extends State<ForEachPage> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
            child: Text('Call ForEach'),
            onPressed: () => cars.forEach((car) => print(car)),
          ),
        ),
      );
}
