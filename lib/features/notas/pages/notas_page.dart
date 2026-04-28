import 'package:flutter/material.dart';
import 'package:flutter_duo/features/notas/widgets/notas_header.dart';
import 'package:flutter_duo/features/notas/widgets/notas_info_list.dart';

class NotasPage extends StatelessWidget {
  const NotasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: const [
          NotasHeader(),
          Expanded(child: UcbAcademicoPage()),
        ],
      ),
    );
  }
}
