import 'package:conversor/Entities/time.dart';
import 'package:conversor/providers/temperature_provider.dart';
import 'package:conversor/providers/time_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeCustomButton extends ConsumerWidget {
  
  const TimeCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Tiempo? tiempoEntrada = ref.watch(tiempoEntradaProvider);
    Tiempo? tiempoSalida = ref.watch(tiempoSalidaProvider);
    double valorNumerico = ref.watch(temperaturaValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(tiempoProviderProvider.notifier).convertir(valorNumerico, tiempoEntrada!, tiempoSalida!);
        ref.read(tiempoValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}