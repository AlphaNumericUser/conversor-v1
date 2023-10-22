import 'package:conversor/Entities/time.dart';
import 'package:conversor/providers/temperature_provider.dart';
import 'package:conversor/providers/time_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';


class TimeUnitInput extends ConsumerWidget {
  const TimeUnitInput({
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
    final tiempoController = ref.watch(tiempoControllerProvider);

    void handleInputChange(String value) {
      if (value.isNotEmpty) {
        try {
          double valorNumerico = double.parse(value);
          ref.read(temperaturaValorNumericoProvider.notifier).cambiarValor(valorNumerico);
        // ignore: empty_catches
        } catch (e) {
        }
      } else {
      }
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
                      hintText: 'From', 
                    ),
                    items: lista.map((unidad) {
                      return DropdownMenuItem(
                        value: unidad,
                        child: Text(unidad.nombre, style: const TextStyle(fontSize: 20)),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        ref.read(tiempoEntradaProvider.notifier).actualizarValor(value);
                      }
                    },
                  ),
                ),
              ),
            ),
            
            Expanded(
              child: Container(
                height: boxHeight,
                alignment: Alignment.bottomRight,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: TextField(
                      onChanged: (value) {
                        // Remueve las comas antes de procesar el número
                        String cleanedValue = value.replaceAll(',', '');
                        handleInputChange(cleanedValue);
                      },
                      controller: tiempoController,
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: fontSize),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(
                        hintText: 'Push here',
                        hintStyle: TextStyle(fontSize: 20),
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.all(10.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),

                      inputFormatters: [
                        NumberTextInputFormatter(
                          integerDigits: 10,
                          decimalDigits: 2,
                          maxValue: '1000000.00',
                          decimalSeparator: '.',
                          groupDigits: 3,
                          groupSeparator: ',',
                          allowNegative: false,
                          overrideDecimalPoint: false,
                          insertDecimalPoint: false,
                          insertDecimalDigits: false,
                          fixNumber: false
                        ),
                      ],

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
