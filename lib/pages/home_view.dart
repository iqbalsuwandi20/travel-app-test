import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/home/body_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Destinasi Indonesia',
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.local_offer, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: BodyHome(screenWidth: screenWidth, screenHeight: screenHeight),
    );
  }
}
