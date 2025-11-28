import 'package:flutter/material.dart';
import 'package:freud_app/screens/assesment/widgets/swipeable_button.dart';
import 'package:freud_app/screens/home/home_screen.dart';
import 'package:freud_app/widgets/result.dart';

class MentalHealthAssesmentScore extends StatelessWidget {
  const MentalHealthAssesmentScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Result(
      score: 80,
      color: Color(0xFF9BB167),
      backgroundImage: 'assets/mental-health-assessment1.png',
      description: 'Mentally Stable',
      child: SwipeableButton(
        text: 'Swipe for Mindful Tips',
        onComplete: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => HomeScreen()),  //TODO: nanti arahin ke article
        );
      },
      )
    );
  }
}