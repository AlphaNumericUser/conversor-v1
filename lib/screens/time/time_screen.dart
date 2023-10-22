import 'package:conversor/providers/time_provider.dart';
import 'package:conversor/screens/time/time_custom_button.dart';
import 'package:conversor/screens/time/time_unit_input.dart';
import 'package:conversor/screens/time/time_unit_output.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class TimeScreen extends ConsumerWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final lista = ref.watch(tiempoProviderProvider);
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.9; // Establece el ancho como el 40% del ancho de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.15; // Establece el ancho como el 40% del ancho de la pantalla


    return Scaffold(
      appBar: AppBar(
        title: const Text('Time'),
      ),
      body: Column(
        children: [
          TimeUnitInput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 40),

          const CustomDivider(),

          TimeUnitOutput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 40),

          const TimeCustomButton()
        ],
      )
    );

  }
}