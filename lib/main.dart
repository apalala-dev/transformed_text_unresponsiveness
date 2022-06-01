import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Unresponsiveness Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const nbLayers = 31;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CircularProgressIndicator(),
            Stack(
                children: List.generate(
                    nbLayers,
                    (index) => Transform(
                        transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.01)
                        ..rotateX(pi / 3),
                        // ..translate(0.0, 0.0, -(index / nbLayers) * 20),
                        child: const Text("A")))),
          ],
        ),
      ),
    );
  }
}
