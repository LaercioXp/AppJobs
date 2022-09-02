
import 'package:flutter/material.dart';

class ListaCategoria extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C','E','F','G','H','I','J','L'];
    final List<int> colorCodes = <int>[600, 500, 100,200,300,400,700,800,900, 400];
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          }
      ),
    );
  }

}