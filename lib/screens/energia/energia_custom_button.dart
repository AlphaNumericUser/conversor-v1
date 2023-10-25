import 'package:conversor/Entities/energia.dart';
import 'package:conversor/providers/energia_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EnergiaCustomButton extends ConsumerWidget {
  
  const EnergiaCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Energia? energiaEntrada = ref.watch(energiaEntradaProvider);
    Energia? energiaSalida = ref.watch(energiaSalidaProvider);
    double valorNumerico = ref.watch(energiaValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(energiaProviderProvider.notifier).convertir(valorNumerico, energiaEntrada!, energiaSalida!);
        ref.read(energiaValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}