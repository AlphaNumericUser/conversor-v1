import 'package:flutter/material.dart';

class UnitInput extends StatelessWidget {
  const UnitInput({
    super.key,
    required this.boxWidth,
    required this.boxHeight,
    required this.lista, required this.fontSize,
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
                      hintText: 'From', // hintText centrado verticalmente
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
                alignment: Alignment.bottomRight, // Alinea el TextField en la esquina inferior derecha
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: fontSize),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Push here', // Texto de ejemplo dentro del TextField
                        hintStyle: TextStyle(fontSize: 20),
                        alignLabelWithHint: true, // Alinea la etiqueta con el texto de ejemplo
                        contentPadding: EdgeInsets.all(10.0), // Relleno interno del TextField
                        enabledBorder: OutlineInputBorder( // Borde sin línea inferior
                          borderSide: BorderSide(color: Colors.transparent), // Color transparente
                        ),
                        focusedBorder: OutlineInputBorder( // Borde cuando el TextField está enfocado
                          borderSide: BorderSide(color: Colors.transparent), // Color transparente
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

