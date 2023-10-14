import 'package:flutter/material.dart';

class ExampleScreen2 extends StatefulWidget {
  const ExampleScreen2({super.key});

  @override
  State<ExampleScreen2> createState() => _ExampleScreen2State();
}

class _ExampleScreen2State extends State<ExampleScreen2> {

  List<String> lista = ['jose', 'alfredo', 'diaz'];
  String? selectedName;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              selectedName ?? 'Hola', 
              style: const TextStyle(fontSize: 90, fontWeight: FontWeight.w200)
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: DropdownButtonFormField(
                value: selectedName,
                items: lista.map((name) {
                  return DropdownMenuItem(
                    value: name,
                    child: Text(name),
                  );
                }).toList(), 
                onChanged: (value) {
                  setState(() {
                    selectedName = value;
                  });
                },
              ),
            )
          ],
        )
      ),
    );
  }
}