import 'package:conversor/Entities/angulo.dart';
import 'package:conversor/providers/angulo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnguloCustomButton extends ConsumerWidget {
  
  const AnguloCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Angulo? anguloEntrada = ref.watch(anguloEntradaProvider);
    Angulo? anguloSalida = ref.watch(anguloSalidaProvider);
    double valorNumerico = ref.watch(anguloValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(anguloProviderProvider.notifier).convertir(valorNumerico, anguloEntrada!, anguloSalida!);
        ref.read(anguloValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}