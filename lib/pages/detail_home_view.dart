import 'package:flutter/material.dart';

import '../models/travel_model.dart';
import '../widgets/detail_home/body_detail_home.dart';

class DetailHomeView extends StatelessWidget {
  final TravelModel travel;

  const DetailHomeView({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: BodyDetailHome(
          travel: travel, screenHeight: screenHeight, screenWidth: screenWidth),
    );
  }
}
