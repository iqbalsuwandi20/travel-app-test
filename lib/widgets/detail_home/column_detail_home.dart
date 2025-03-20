import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/travel_model.dart';

class ColumnDetailHome extends StatelessWidget {
  const ColumnDetailHome({
    super.key,
    required this.travel,
    required this.screenHeight,
    required this.screenWidth,
  });

  final TravelModel travel;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
              child: Image.asset(
                travel.imagePath,
                width: double.infinity,
                height: screenHeight * 0.4,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: screenHeight * 0.4,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.5),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              left: screenWidth * 0.05,
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => context.pop(),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.06,
            vertical: screenHeight * 0.025,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                travel.title,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    travel.price,
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[700],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,
                          color: Colors.amber, size: screenWidth * 0.05),
                      SizedBox(width: screenWidth * 0.012),
                      Text(
                        travel.rating.toString(),
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                "Deskripsi",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: screenHeight * 0.012),
              Text(
                travel.description,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.042,
                  color: Colors.black87,
                  height: screenHeight * 0.0020,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                "Termasuk / Tidak Termasuk",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: screenHeight * 0.012),
              Text(
                travel.includeExclude,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.042,
                  color: Colors.black87,
                  height: screenHeight * 0.0020,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                "Syarat & Ketentuan",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: screenHeight * 0.012),
              Text(
                travel.termsAndConditions,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.042,
                  color: Colors.black87,
                  height: screenHeight * 0.0020,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                "Jumlah Peserta",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: screenHeight * 0.012),
              Text(
                "Minimal ${travel.pax} orang",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.042,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
