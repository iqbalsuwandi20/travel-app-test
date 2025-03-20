import 'package:flutter/material.dart';

import '../../models/travel_model.dart';
import 'column_detail_home.dart';

class BodyDetailHome extends StatelessWidget {
  const BodyDetailHome({
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
    return SingleChildScrollView(
      child: ColumnDetailHome(
          travel: travel, screenHeight: screenHeight, screenWidth: screenWidth),
    );
  }
}
