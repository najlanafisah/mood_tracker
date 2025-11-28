import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freud_app/screens/assesment/widgets/outline_button.dart';
import 'package:freud_app/widgets/result.dart';
import 'package:freud_app/widgets/animated_circle.dart';

class CalculatingAssesmentScreen extends StatefulWidget {
  const CalculatingAssesmentScreen({super.key});

  @override
  State<CalculatingAssesmentScreen> createState() =>
      _CalculatingAssesmentScreenState();
}

class _CalculatingAssesmentScreenState
    extends State<CalculatingAssesmentScreen> {
  int progress = 0;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      int finalScore = 20; // dummy ini nanti ganti yahhh buat total scorenya eheheh

      Widget targetScreen;

      if (finalScore <= 30) {
        targetScreen = Result(
          score: finalScore,
          color: Color(0xFFA694F5),
          icon: Icons.sentiment_very_dissatisfied,
          description: "You’re suicidal. Please call hotline or loved ones!",
          suggestionsCount: 225,
          feeling: "Depressive",
          backgroundImage: 'assets/mental-health-assessment3.png',
          child: OutlineButton(
            text: "Call Emergency Contact",
            icon: Icons.phone,
          onPressed: () {},
          ),
        );
      } else if (finalScore <= 60) {
        targetScreen = Result(
          score: finalScore,
          color: Color(0xFFED7E1C),
          icon: Icons.sentiment_dissatisfied,
          description: "You’re mentally unstable. Consult psychiatrist.",
          suggestionsCount: 16,
          feeling: "Sad",
          backgroundImage: 'assets/mental-health-assessment2.png',
          child: OutlineButton(
            text: "Schedule Appointment",
            icon: Icons.phone,
          ),
        );
      } else {
        targetScreen = Result(
          score: finalScore,
          color: Color(0xFF9BB167),
          icon: Icons.sentiment_satisfied_alt,
          description: "You’re mentally healthy. Are you ready?",
          suggestionsCount: 8,
          feeling: "Overjoyed",
          backgroundImage: 'assets/mental-health-assessment1.png',
          child: OutlineButton(
            text: "I’m Ready",
            icon: Icons.redo_rounded,
          ),
        );
      }

      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => targetScreen),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCircle(
      color: Color(0xFF64422D),
      backgroundColor: Color(0xFF4F3422),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Compiling Data...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Please wait... We’re  calculating the data \n based on your asessment.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
