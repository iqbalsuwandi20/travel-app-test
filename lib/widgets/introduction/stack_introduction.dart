import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'gradient_introduction.dart';
import 'text_introduction.dart';

class StackIntroduction extends StatelessWidget {
  const StackIntroduction({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientIntroduction(
            screenWidth: screenWidth, screenHeight: screenHeight),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FractionallySizedBox(
                widthFactor: 0.6,
                child: Lottie.asset(
                  'assets/lotties/introduction.json',
                  height: screenHeight * 0.3,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextIntroduction(screenWidth: screenWidth),
            ],
          ),
        ),
      ],
    );
  }
}
