import 'package:conversor/widgets/shared/unit_output.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class DistanceScreen extends StatelessWidget {
  const DistanceScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> lista = ['m', 'cm', 'mm', 'km'];
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth * 0.9; // Establece el ancho como el 40% del ancho de la pantalla
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight * 0.15; // Establece el ancho como el 40% del ancho de la pantalla


    return Scaffold(
      appBar: AppBar(
        title: const Text('Distance'),
      ),
      body: Column(
        children: [
          UnitInput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 80,),

          const CustomDivider(),

          UnitOutput(boxWidth: boxWidth, boxHeight: boxHeight, lista: lista, fontSize: 80,),
        ],
      )
    );
  }
}


