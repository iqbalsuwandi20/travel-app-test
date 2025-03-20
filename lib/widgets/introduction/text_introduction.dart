import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextIntroduction extends StatelessWidget {
  const TextIntroduction({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(seconds: 2),
      builder: (context, opacity, child) {
        return Opacity(
          opacity: opacity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Text(
              "Saya Iqbal Suwandi,\n"
              "seorang Pengembang Flutter yang penuh semangat\n",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
