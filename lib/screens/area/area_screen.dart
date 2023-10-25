import 'package:conversor/providers/area_provider.dart';
import 'package:conversor/screens/area/area_custom_button.dart';
import 'package:conversor/screens/area/area_unit_input.dart';
import 'package:conversor/screens/area/area_unit_output.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class AreaScreen extends ConsumerWidget {
  const AreaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final lista = ref.watch(areaProviderProvider);
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.9; // Establece el ancho como el 40% del ancho de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.15; // Establece el ancho como el 40% del ancho de la pantalla


    return Scaffold(
      appBar: AppBar(
        title: const Text('Area Screen'),
      ),
      body: Column(
        children: [
          AreaUnitInput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 40),

          const CustomDivider(),

          AreaUnitOutput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 40),

          const AreaCustomButton()
        ],
      )
    );
    
  }
}


