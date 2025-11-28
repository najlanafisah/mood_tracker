import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final Color color;
  final IconData icon;
  final IconData iconButton;
  final String description;
  final int suggestionsCount;
  final String feeling;
  final String buttonText;
  final VoidCallback onPressed;
  final String backgroundImage;

  const ResultScreen({
    super.key,
    required this.score,
    required this.color,
    required this.description,
    required this.suggestionsCount,
    required this.feeling,
    required this.buttonText,
    required this.onPressed,
    required this.backgroundImage,
    required this.icon,
    required this.iconButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Freud Score",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                CircleScore(score: score, mainColor: color),
                SizedBox(height: 30),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                SizedBox(height: 42),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lightbulb_outline, color: Colors.white, size: 18),
                    SizedBox(width: 6),
                    Text(
                      "$suggestionsCount AI suggestions",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(width: 20),
                    Icon(icon, color: Colors.white, size: 18),
                    SizedBox(width: 6),
                    Text(
                      feeling,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 42),
                OutlinedButton(
                  onPressed: onPressed,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white, width: 2),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        buttonText,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(iconButton, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget CircleScore({required int score, required Color mainColor}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: 340,
        height: 340,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.2),
        ),
      ),
      Container(
        width: 310,
        height: 310,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.4),
        ),
      ),
      Container(
        width: 280,
        height: 280,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.95),
        ),
        alignment: Alignment.center,
        child: Text(
          "$score",
          style: TextStyle(
            fontSize: 100,
            color: mainColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    ],
  );
}
