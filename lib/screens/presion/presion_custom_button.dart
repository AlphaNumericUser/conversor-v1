import 'package:conversor/Entities/presion.dart';
import 'package:conversor/providers/presion_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PresionCustomButton extends ConsumerWidget {
  
  const PresionCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Presion? presionEntrada = ref.watch(presionEntradaProvider);
    Presion? presionSalida = ref.watch(presionSalidaProvider);
    double valorNumerico = ref.watch(presionValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(presionProviderProvider.notifier).convertir(valorNumerico, presionEntrada!, presionSalida!);
        ref.read(presionValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}