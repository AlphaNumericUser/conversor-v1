import 'package:conversor/Entities/fuerza.dart';
import 'package:conversor/providers/fuerza_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FuerzaCustomButton extends ConsumerWidget {
  
  const FuerzaCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Fuerza? fuerzaEntrada = ref.watch(fuerzaEntradaProvider);
    Fuerza? fuerzaSalida = ref.watch(fuerzaSalidaProvider);
    double valorNumerico = ref.watch(fuerzaValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(fuerzaProviderProvider.notifier).convertir(valorNumerico, fuerzaEntrada!, fuerzaSalida!);
        ref.read(fuerzaValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}