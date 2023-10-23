import 'package:conversor/Entities/storage.dart';
import 'package:conversor/providers/storage_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StorageCustomButton extends ConsumerWidget {
  
  const StorageCustomButton({ 
    super.key
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Storage? storageEntrada = ref.watch(storageEntradaProvider);
    Storage? storageSalida = ref.watch(storageSalidaProvider);
    double valorNumerico = ref.watch(storageValorNumericoProvider);
    double conversion = 0;

    return FloatingActionButton.extended(
      onPressed: () {
        conversion = ref.read(storageProviderProvider.notifier).convertir(valorNumerico, storageEntrada!, storageSalida!);
        ref.read(storageValorOutputProvider.notifier).cambiarValor(conversion);
      },
      label: const Text('Convert')
    );
  }
}