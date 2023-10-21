import 'package:conversor/providers/temperature_provider.dart';
import 'package:conversor/screens/temperature/temperature_custom_button.dart';
import 'package:conversor/screens/temperature/temperature_unit_input.dart';
import 'package:conversor/screens/temperature/temperature_unit_output.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class TemperatureScreen extends ConsumerWidget {
  const TemperatureScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final temperaturas = ref.watch(temperaturaProviderProvider);
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.9; // Establece el ancho como el 40% del ancho de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.15; // Establece el ancho como el 40% del ancho de la pantalla


    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature'),
      ),
      body: Column(
        children: [
          TemperatureUnitInput(boxWidth: boxWidth, boxHeight: boxHeight, lista: temperaturas, fontSize: 40),

          const CustomDivider(),

          TemperatureUnitOutput(boxWidth: boxWidth, boxHeight: boxHeight, lista: temperaturas, fontSize: 40),

          const TemperatureCustomButton()
        ],
      )
    );
  }
}