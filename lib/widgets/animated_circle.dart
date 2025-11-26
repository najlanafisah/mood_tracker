import 'package:flutter/material.dart';

class AnimatedCircle extends StatelessWidget {
  final Widget? child;
  final Color color;
  final Color? backgroundColor;

  const AnimatedCircle({super.key, this.child, required this.color, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    final circleSize = w * 0.78;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          // ATAS
          Positioned(
            top: h * 0.02,
            right: w * 0.10,
            child: _bigCircle(circleSize),
          ),
      
          // KIRI
          Positioned(
            top: h * 0.32,
            left: w * -0.40,
            child: _bigCircle(circleSize),
          ),
      
          // BAWAH
          Positioned(
            bottom: h * 0.02,
            left: w * 0.10,
            child: _bigCircle(circleSize),
          ),
      
          // KANAN
          Positioned(
            top: h * 0.32,
            right: w * -0.40,
            child: _bigCircle(circleSize),
          ),
      
          if (child != null) child!,
        ],
      ),
    );
  }

  Widget _bigCircle(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
