import 'package:conversor/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [

            SliverAppBar(
              title: const Text('Unit Converter'),
              backgroundColor: Colors.grey[200],
            ),

            const MainMenu(),
          ],
        ),
      )
    );
  }
}