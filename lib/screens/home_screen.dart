import 'package:conversor/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: CustomScrollView(
          slivers: [

            SliverAppBar(
              title: Text('Converter'),
            ),

            MainMenu(),
          ],
        ),
      )
    );
  }
}