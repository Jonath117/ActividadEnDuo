import 'package:flutter/material.dart';

class MateriaExpansionCard extends StatefulWidget {
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
  State<MateriaExpansionCard> createState() => _MateriaExpansionCardState();
}

class _MateriaExpansionCardState extends State<MateriaExpansionCard> {
  bool _isExpanded = false; 

  @override
  Widget build(BuildContext context) {
    final double progreso = widget.notaFinal / 100.0;
    
    const Color ucbDarkBlue = Color(0xFF0D47A1); 

    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          onExpansionChanged: (isExpanded) {
            setState(() {
              _isExpanded = isExpanded;
            });
          },
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: ucbDarkBlue.withAlpha(30),
              shape: BoxShape.circle,
            ),
            child: Icon(widget.icono, color: ucbDarkBlue, size: 30),
          ),
          title: _isExpanded
              ? Text(
                  widget.materia,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.materia,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
          subtitle: _isExpanded
              ? Text(
                  widget.codigo,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                )
              : null,

          trailing: _isExpanded
              ? null 
              : IntrinsicWidth(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${widget.notaFinal.toInt()} / 100',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: 100,
                        child: LinearProgressIndicator(
                          value: progreso,
                          minHeight: 6,
                          backgroundColor: Colors.grey[200],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.orange[400]!,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          children: [
            Row(
              children: [
                Text(
                  'Docente: ${widget.docente}',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const Spacer(),
                Text(
                  '| Créditos: ${widget.creditos}',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text(
                  'Nota Final: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '${widget.notaFinal.toInt()} / 100 ',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                ),
                const Text(
                  '(Aprobado)',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: progreso,
              minHeight: 10,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                ucbDarkBlue,
              ),
            ),
            const SizedBox(height: 16),
            ...widget.parciales.map((parcial) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Text(
                      '${parcial['nombre']}:',
                      style: const TextStyle(fontSize: 15),
                    ),
                    const Spacer(),
                    Text(
                      '${parcial['nota']}',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}