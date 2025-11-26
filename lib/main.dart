import 'package:flutter/material.dart';
import 'package:freud_app/screens/assesment/calculating_assesment_screen.dart';

void main() {
  runApp(const FreudApp());
}

class FreudApp extends StatelessWidget {
  const FreudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Freud AI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CalculatingAssesmentScreen(),
    );
  }
}
