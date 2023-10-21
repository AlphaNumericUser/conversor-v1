import 'package:conversor/Entities/weight.dart';
import 'package:conversor/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeightCustomButton extends ConsumerWidget {
  
  const WeightCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Weight? pesoEntrada = ref.watch(pesoEntradaProvider);
    Weight? pesoSalida = ref.watch(pesoSalidaProvider);
    double valorNumerico = ref.watch(pesoValorNumericoProvider);
    double conversion = 0;

    // print('');


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(weightProviderProvider.notifier).convertir(valorNumerico, pesoEntrada!, pesoSalida!);
        ref.read(pesoValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}