import 'package:flutter/material.dart';
import 'ucb_info.dart';
import 'materia_expansion_card.dart';

class UcbAcademicoPage extends StatelessWidget {
  const UcbAcademicoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> materias = [
      {
        'nombre': 'INTELIGENCIA ARTIFICIAL',
        'codigo': 'SIS-430',
        'docente': 'Ing. Carlos Mendez',
        'creditos': 5,
        'notaFinal': 85,
        'icono': Icons.psychology,
        'parciales': [
          {'nombre': 'Parcial 1', 'nota': 80},
          {'nombre': 'Parcial 2', 'nota': 88},
          {'nombre': 'Trabajos Prácticos', 'nota': 85},
          {'nombre': 'Examen Final', 'nota': 86},
          {'nombre': 'Asistencia', 'nota': '90%'},
        ],
      },
      {
        'nombre': 'INGENIERÍA DE SOFTWARE II',
        'codigo': 'SIS-320',
        'docente': 'Ing. Maria Fernanda Lopez',
        'creditos': 4,
        'notaFinal': 89,
        'icono': Icons.developer_mode,
        'parciales': [
          {'nombre': 'Parcial 1', 'nota': 85},
          {'nombre': 'Parcial 2', 'nota': 92},
          {'nombre': 'Proyecto Final', 'nota': 90},
          {'nombre': 'Examen Final', 'nota': 88},
          {'nombre': 'Asistencia', 'nota': '98%'},
        ],
      },
      {
        'nombre': 'REDES DE COMPUTADORAS',
        'codigo': 'SIS-310',
        'docente': 'Ing. Roberto Salinas',
        'creditos': 4,
        'notaFinal': 78,
        'icono': Icons.router,
        'parciales': [
          {'nombre': 'Parcial 1', 'nota': 75},
          {'nombre': 'Parcial 2', 'nota': 80},
          {'nombre': 'Laboratorio', 'nota': 85},
          {'nombre': 'Examen Final', 'nota': 72},
          {'nombre': 'Asistencia', 'nota': '85%'},
        ],
      },
      {
        'nombre': 'BASE DE DATOS II',
        'codigo': 'SIS-240',
        'docente': 'Ing. Patricia Guzman',
        'creditos': 5,
        'notaFinal': 95,
        'icono': Icons.storage,
        'parciales': [
          {'nombre': 'Parcial 1', 'nota': 96},
          {'nombre': 'Parcial 2', 'nota': 94},
          {'nombre': 'Proyecto Práctico', 'nota': 98},
          {'nombre': 'Examen Final', 'nota': 92},
          {'nombre': 'Asistencia', 'nota': '100%'},
        ],
      },
      {
        'nombre': 'SEGURIDAD INFORMÁTICA',
        'codigo': 'SIS-450',
        'docente': 'Ing. Luis Fernando Quiroga',
        'creditos': 4,
        'notaFinal': 82,
        'icono': Icons.security,
        'parciales': [
          {'nombre': 'Parcial 1', 'nota': 80},
          {'nombre': 'Parcial 2', 'nota': 85},
          {'nombre': 'Laboratorios (CTF)', 'nota': 78},
          {'nombre': 'Examen Final', 'nota': 83},
          {'nombre': 'Asistencia', 'nota': '92%'},
        ],
      },
      {
        'nombre': 'SISTEMAS OPERATIVOS',
        'codigo': 'SIS-230',
        'docente': 'Ing. Daniela Vargas',
        'creditos': 4,
        'notaFinal': 65,
        'icono': Icons.memory,
        'parciales': [
          {'nombre': 'Parcial 1', 'nota': 60},
          {'nombre': 'Parcial 2', 'nota': 55},
          {'nombre': 'Prácticas', 'nota': 70},
          {'nombre': 'Examen Final', 'nota': 75},
          {'nombre': 'Asistencia', 'nota': '80%'},
        ],
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UcbAverageInfo(),
            const SizedBox(height: 16),
            ...materias.map((m) {
              return MateriaExpansionCard(
                materia: m['nombre'],
                codigo: m['codigo'] ?? '',
                docente: m['docente'] ?? '',
                creditos: m['creditos'] ?? 0,
                notaFinal: m['notaFinal'].toDouble(),
                icono: m['icono'],
                parciales: m['parciales'],
              );
            }),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
