import 'package:flutter/material.dart';
import 'package:freud_app/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.urbanistTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
