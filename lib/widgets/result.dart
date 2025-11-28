import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Color color;
  final IconData? icon;
  final String description;
  final int? suggestionsCount;
  final String? feeling;
  final Widget child;
  final String backgroundImage;

  const Result({
    super.key,
    required this.score,
    required this.color,
    this.icon,
    required this.description,
    this.suggestionsCount,
    this.feeling,
    required this.child,
    required this.backgroundImage,
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
                circleScore(score: score, mainColor: color),
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

                if (suggestionsCount != null || icon != null || feeling != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (suggestionsCount != null) ...[
                        Icon(Icons.lightbulb_outline, color: Colors.white, size: 18),
                        SizedBox(width: 6),
                        Text(
                          "$suggestionsCount AI suggestions",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],

                      if (suggestionsCount != null && icon != null)
                        SizedBox(width: 20),

                      if (icon != null) ...[
                        Icon(icon, color: Colors.white, size: 18),
                        SizedBox(width: 6),
                      ],

                      if (feeling != null)
                        Text(
                          feeling!,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                    ],
                  ),
                SizedBox(height: 60),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget circleScore({required int score, required Color mainColor}) {
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
