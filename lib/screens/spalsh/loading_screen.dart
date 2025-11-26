import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freud_app/screens/spalsh/widgets/animated_circle.dart';

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

    Timer.periodic(Duration(milliseconds: 30), (timer) {
      if (progress >= 100) {
        timer.cancel();
      } else {
        setState(() {
          progress++;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedCircle(
        child: Center(
          child: Text(
            '$progress%',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
