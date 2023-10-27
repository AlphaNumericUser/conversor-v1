import 'package:conversor/providers/poder_provider.dart';
import 'package:conversor/screens/poder/poder_custom_button.dart';
import 'package:conversor/screens/poder/poder_unit_input.dart';
import 'package:conversor/screens/poder/poder_unit_output.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';


class PoderScreen extends ConsumerWidget {
  const PoderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final lista = ref.watch(poderProviderProvider);
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.9; // Establece el ancho como el 40% del ancho de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.15; // Establece el ancho como el 40% del ancho de la pantalla


    return Scaffold(
      appBar: AppBar(
        title: const Text('Power Screen'),
      ),
      body: Column(
        children: [
          PoderUnitInput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 40),

          const CustomDivider(),

          PoderUnitOutput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 40),

          const PoderCustomButton()
        ],
      )
    );
    
  }
}


