import 'package:flutter/material.dart';

class MateriaExpansionCard extends StatelessWidget {
  final String materia;
  final String codigo;
  final String docente;
  final int creditos;
  final double notaFinal;
  final IconData icono;
  final List<Map<String, dynamic>> parciales;

  const MateriaExpansionCard({
    super.key,
    required this.materia,
    required this.codigo,
    required this.docente,
    required this.creditos,
    required this.notaFinal,
    required this.icono,
    required this.parciales,
  });

  @override
  Widget build(BuildContext context) {    
    const Color ucbDarkBlue = Color(0xFF0D47A1); 

    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ucbDarkBlue.withAlpha(30),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icono, color: ucbDarkBlue, size: 30),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        materia,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        codigo,
                        style: const TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),


            
          ],
        ),
      ),
    );
  }
}