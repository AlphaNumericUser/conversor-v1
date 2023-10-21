import 'package:conversor/providers/weight_provider.dart';
import 'package:conversor/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class WeightScreen extends ConsumerWidget {
  const WeightScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final pesos = ref.watch(weightProviderProvider);
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.9; // Establece el ancho como el 40% del ancho de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.15; // Establece el ancho como el 40% del ancho de la pantalla

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight'),
      ),
      body: Column(
        children: [
          WeightUnitInput(boxWidth: boxWidth, boxHeight: boxHeight, lista: pesos, fontSize: 40),

          const CustomDivider(),

          WeightUnitOutput(boxWidth: boxWidth, boxHeight: boxHeight, lista: pesos, fontSize: 40),

          const WeightCustomButton()
        ],
      )
    );

  }
}