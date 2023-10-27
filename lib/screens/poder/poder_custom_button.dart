import 'package:conversor/Entities/poder.dart';
import 'package:conversor/providers/poder_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PoderCustomButton extends ConsumerWidget {
  
  const PoderCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Poder? poderEntrada = ref.watch(poderEntradaProvider);
    Poder? poderSalida = ref.watch(poderSalidaProvider);
    double valorNumerico = ref.watch(poderValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(poderProviderProvider.notifier).convertir(valorNumerico, poderEntrada!, poderSalida!);
        ref.read(poderValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}