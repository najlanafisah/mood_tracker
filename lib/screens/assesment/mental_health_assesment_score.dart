import 'package:flutter/material.dart';
import 'package:freud_app/widgets/result_screen.dart';

class MentalHealthAssesmentScore extends StatelessWidget {
  const MentalHealthAssesmentScore({super.key});

  @override
  Widget build(BuildContext context) {
    return ResultScreen(
      score: 80,
      color: Color(0xFF9BB167),
      icon: Icons.sentiment_satisfied_alt,
      description: "You’re mentally healthy. Are you ready?",
      suggestionsCount: 8,
      feeling: "Overjoyed",
      buttonText: "I’m Ready",
      iconButton: Icons.redo_rounded,
      onPressed: () {},
      backgroundImage: 'assets/mental-health-assessment1.png',
    );
  }
}
