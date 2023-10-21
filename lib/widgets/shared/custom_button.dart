import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Entities/distancia.dart';
import '../../providers/distancia_provider.dart';

class CustomButton extends ConsumerWidget {
  
  const CustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Distancia? distanciaEntrada = ref.watch(distanciaEntradaProvider);
    Distancia? distanciaSalida = ref.watch(distanciaSalidaProvider);
    double valorNumerico = ref.watch(distanciaValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(distanciaProviderProvider.notifier).convertir(valorNumerico, distanciaEntrada!, distanciaSalida!);
        ref.read(distanciaValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convertir')
    );
  }
}