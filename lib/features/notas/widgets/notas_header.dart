import 'package:flutter/material.dart';

class NotasHeader extends StatelessWidget {
  const NotasHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 18, 118, 201),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            'UCB - Portal Academico',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Column(
            children: [
              IconButton(icon: const Icon(Icons.school), onPressed: () {}),
              Row(
                children: const [
                  Text('Nombre del Alumno:'),
                  Text(
                    'Jonathan Rocha',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Ingenieria de Software'),
                  Text('7mo Semestre | Registro: 20201234'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
