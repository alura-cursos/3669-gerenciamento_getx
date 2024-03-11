import 'package:flutter/material.dart';
import 'package:panucci_delivery/screens/home.dart';

void main() {
  runApp(const PanucciDelivery());
}

class PanucciDelivery extends StatelessWidget {
  const PanucciDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 83, 83),
          ),
          useMaterial3: true),
      home: Home(),
    );
  }
}
