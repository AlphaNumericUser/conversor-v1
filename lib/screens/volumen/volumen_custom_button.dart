import 'package:conversor/Entities/volumen.dart';
import 'package:conversor/providers/volumen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VolumenCustomButton extends ConsumerWidget {
  
  const VolumenCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Volumen? volumenEntrada = ref.watch(volumenEntradaProvider);
    Volumen? volumenSalida = ref.watch(volumenSalidaProvider);
    double valorNumerico = ref.watch(volumenValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(volumenProviderProvider.notifier).convertir(valorNumerico, volumenEntrada!, volumenSalida!);
        ref.read(volumenValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}