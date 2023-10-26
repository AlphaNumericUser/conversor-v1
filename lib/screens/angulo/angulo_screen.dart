import 'package:conversor/providers/angulo_provider.dart';
import 'package:conversor/screens/angulo/angulo_custom_button.dart';
import 'package:conversor/screens/angulo/angulo_unit_input.dart';
import 'package:conversor/screens/angulo/angulo_unit_output.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';


class AnguloScreen extends ConsumerWidget {
  const AnguloScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final lista = ref.watch(anguloProviderProvider);
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.9; // Establece el ancho como el 40% del ancho de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.15; // Establece el ancho como el 40% del ancho de la pantalla


    return Scaffold(
      appBar: AppBar(
        title: const Text('Angle Screen'),
      ),
      body: Column(
        children: [
          AnguloUnitInput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 40),

          const CustomDivider(),

          AnguloUnitOutput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 40),

          const AnguloCustomButton()
        ],
      )
    );
    
  }
}


