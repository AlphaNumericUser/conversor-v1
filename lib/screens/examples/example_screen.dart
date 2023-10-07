import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {

  String message = 'Click Suscribe';
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Distancia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                ),
                controller: textController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(message),//_message
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, 
                backgroundColor: Colors.red
              ),
              onPressed: () {
                message = '${textController.text} suscribed :)';
                setState(() {});
              }, 
              child: const Text('Suscribe')
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}