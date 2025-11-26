import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freud_app/widgets/animated_circle.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int progress = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(milliseconds: 25), (timer) {
      if (progress >= 99) {
        timer.cancel();

        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (_) => const HomeScreen()),
        // );
      } else {
        setState(() {
          progress++;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCircle(
      color: Color(0xFF4F3422),
      backgroundColor: Color(0xFF64422D),
      child: Center(
        child: Text(
          '$progress%',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
