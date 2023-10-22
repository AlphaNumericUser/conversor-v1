import 'package:conversor/Entities/time.dart';
import 'package:conversor/providers/time_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeUnitOutput extends ConsumerWidget {
  const TimeUnitOutput({
    Key? key,
    required this.boxWidth,
    required this.boxHeight,
    required this.lista,
    required this.fontSize,
  }) : super(key: key);

  final double boxWidth;
  final double boxHeight;
  final List<Tiempo> lista;
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valorOutput = ref.watch(tiempoValorOutputProvider);

    String formattedValue;

    if (valorOutput % 1 == 0) {
      formattedValue = valorOutput.toInt().toString(); // Mostrará el número entero si no tiene decimales
      formattedValue = formattedValue.replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]},'
      );
    } else if (valorOutput < 1) {
      formattedValue = valorOutput.toStringAsFixed(16); // Mostrará 5 decimales si el valor es menor que 1
      formattedValue = formattedValue.replaceAllMapped(
        RegExp(r'(\.\d*?[1-9])0*$'), // Expresión regular para eliminar ceros finales
        (Match match) => '${match[1]}', // Mantener los dígitos antes del primer cero final
      );
    } else {
      formattedValue = valorOutput.toStringAsFixed(2); // Mostrará 2 decimales en otros casos
      formattedValue = formattedValue.replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]},'
      );
    }

    return Center(
      child: SizedBox(
        width: boxWidth,
        height: boxHeight,
        child: Row(
          children: [
            SizedBox(
              width: boxWidth / 3,
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
                        child: Text(
                          unidad.nombre,
                          style: const TextStyle(fontSize: 20),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      ref.read(tiempoSalidaProvider.notifier).actualizarValor(value!);
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: boxHeight,
                alignment: Alignment.centerRight, // Alinea el contenido en el centro derecho
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      formattedValue,
                      style: TextStyle(fontSize: fontSize),
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
