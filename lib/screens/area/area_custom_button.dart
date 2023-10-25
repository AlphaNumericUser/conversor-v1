import 'package:conversor/Entities/area.dart';
import 'package:conversor/providers/area_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AreaCustomButton extends ConsumerWidget {
  
  const AreaCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Area? areaEntrada = ref.watch(areaEntradaProvider);
    Area? areaSalida = ref.watch(areaSalidaProvider);
    double valorNumerico = ref.watch(areaValorNumericoProvider);
    double conversion = 0;


    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(areaProviderProvider.notifier).convertir(valorNumerico, areaEntrada!, areaSalida!);
        ref.read(areaValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}