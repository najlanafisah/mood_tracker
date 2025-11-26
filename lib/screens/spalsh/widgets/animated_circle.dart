import 'package:flutter/material.dart';

class AnimatedCircle extends StatelessWidget {
  final Widget? child;

  const AnimatedCircle({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    final circleSize = w * 0.70;

    return Stack(
      children: [
        Positioned.fill(
          child: Container(color: Color(0xFF251404)),
        ),

        // ATAS
        Positioned(
          top: h * 0.02,
          right: w * 0.15,
          child: _bigCircle(circleSize),
        ),

        // KIRI
        Positioned(
          top: h * 0.35,
          left: w * -0.30,
          child: _bigCircle(circleSize),
        ),

        // BAWAH
        Positioned(
          bottom: h * 0.02,
          left: w * 0.15,
          child: _bigCircle(circleSize),
        ),

        // KANAN
        Positioned(
          top: h * 0.35,
          right: w * -0.30,
          child: _bigCircle(circleSize),
        ),

        if (child != null) child!,
      ],
    );
  }

  Widget _bigCircle(double size) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Color(0xFF4F3422),
        shape: BoxShape.circle,
      ),
    );
  }
}
