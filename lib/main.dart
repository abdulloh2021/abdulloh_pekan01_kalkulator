import 'package:abdulloh_pekan01_kalkulator/kalkulator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Sederhana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KalkulatorHomePage(),
    );
  }
}
