import 'package:conversor/Entities/temperature.dart';
import 'package:conversor/providers/temperature_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TemperatureCustomButton extends ConsumerWidget {
  
  const TemperatureCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Temperature? temperaturaEntrada = ref.watch(temperaturaEntradaProvider);
    Temperature? temperaturaSalida = ref.watch(temperaturaSalidaProvider);
    double valorNumerico = ref.watch(temperaturaValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(temperaturaProviderProvider.notifier).convertir(valorNumerico, temperaturaEntrada!, temperaturaSalida!);
        ref.read(temperaturaValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}