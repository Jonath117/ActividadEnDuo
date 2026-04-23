import 'package:flutter/material.dart';

class NotasInfoList extends StatelessWidget {
  const NotasInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.science),
          title: Text('Materia 1'),
          subtitle: Text('Nota: 85'),
        ),
        LinearProgressIndicator(value: 0.85, color: Colors.green),
        ListTile(
          leading: Icon(Icons.science),
          title: Text('Materia 2'),
          subtitle: Text('Nota: 90'),
        ),
        LinearProgressIndicator(value: 0.90, color: Colors.green),
        ListTile(
          leading: Icon(Icons.science),
          title: Text('Materia 3'),
          subtitle: Text('Nota: 78'),
        ),
        LinearProgressIndicator(value: 0.78, color: Colors.green),
      ],
    );
  }
}
