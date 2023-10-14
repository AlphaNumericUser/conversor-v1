import 'package:conversor/Entities/distancia.dart';
import 'package:conversor/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnitInput extends ConsumerWidget {
  const UnitInput({
    Key? key,
    required this.boxWidth,
    required this.boxHeight,
    required this.lista,
    required this.fontSize,
  }) : super(key: key);

  final double boxWidth;
  final double boxHeight;
  final List<Distancia> lista;
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = ref.watch(controllerProviderProvider);

    void handleInputChange(String value) {
      if (value.isNotEmpty) {
        try {
          double valorNumerico = double.parse(value);
          ref.read(valorNumericoProvider.notifier).cambiarValor(valorNumerico);
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
                        ref.read(distanciaEntradaProvider.notifier).actualizarValor(value);
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
                      onChanged: handleInputChange,
                      controller: textController,
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: fontSize),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,4}')),
                      ],
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
