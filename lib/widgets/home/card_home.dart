import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/travel_model.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    super.key,
    required this.screenHeight,
    required this.item,
    required this.screenWidth,
  });

  final double screenHeight;
  final TravelModel item;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.2),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'image_${item.title}',
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    item.imagePath,
                    width: double.infinity,
                    height: screenHeight * 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: GoogleFonts.poppins(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.007),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.price,
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue[700],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.amber, size: screenWidth * 0.05),
                            SizedBox(width: screenWidth * 0.01),
                            Text(
                              item.rating.toString(),
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * 0.02,
            right: screenWidth * 0.03,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.03,
                vertical: screenHeight * 0.01,
              ),
              decoration: BoxDecoration(
                color: item.isOpenTrip ? Colors.green : Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                item.isOpenTrip
                    ? 'Perjalanan Bersama'
                    : ' Perjalanan Eksklusif',
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
