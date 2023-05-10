import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  final List<Widget> myList = List.generate(
      100,
      (index) => Text(
            "${index + 1}",
            style: TextStyle(fontSize: 20 + double.parse(index.toString())),
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: ListView(
          children: myList,
          //ListView nilai otomatis berarah kebawah
          // scrollDirection: Axis.horizontal, //cara merubah geser kekanan kiri
        ),
      ),
    );
  }
}
