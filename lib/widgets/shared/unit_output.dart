import 'package:flutter/material.dart';

class UnitOutput extends StatelessWidget {
  const UnitOutput({
    super.key,
    required this.boxWidth,
    required this.boxHeight,
    required this.lista, 
    required this.fontSize,
  });

  final double boxWidth;
  final double boxHeight;
  final List<String> lista;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: boxWidth,
        height: boxHeight,
        // color: Colors.red.shade100,
        child: Row(
          children: [
            SizedBox(
              width: boxWidth/3,
              height: boxHeight,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      hintText: 'To', // hintText centrado verticalmente
                    ),
                    items: lista.map((unidad) {
                      return DropdownMenuItem(
                        value: unidad,
                        child: Text(unidad, style: const TextStyle(fontSize: 20),),
                      );
                    }).toList(), 
                    onChanged: (value) {
                      
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: boxHeight,
                // color: Colors.blue,
                alignment: Alignment.centerRight, // Alinea el contenido en el centro derecho
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '10', 
                    style: TextStyle(fontSize: fontSize),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}