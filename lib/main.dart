import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        children: const [
          TextField(
            decoration: InputDecoration(
              hintText: 'Latitude',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Longitude',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Zoom',
            ),
          ),
        ],
      ),
    );
  }
}
