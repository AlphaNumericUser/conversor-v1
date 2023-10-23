import 'package:conversor/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/distancia_provider.dart';
import '../../widgets/widgets.dart';

class DistanceScreen extends ConsumerWidget {
  const DistanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final distancias = ref.watch(distanciaProviderProvider);
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.9; // Establece el ancho como el 40% del ancho de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.15; // Establece el ancho como el 40% del ancho de la pantalla


    return Scaffold(
      appBar: AppBar(
        title: const Text('Distance Screen'),
      ),
      body: Column(
        children: [
          DistanceUnitInput(boxWidth: boxWidth, boxHeight: boxHeight, lista: distancias, fontSize: 40),

          const CustomDivider(),

          DistanceUnitOutput(boxWidth: boxWidth, boxHeight: boxHeight, lista: distancias, fontSize: 40),

          const DistanceCustomButton(),
        ],
      )
    );
    
  }
}


