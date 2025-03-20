import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/travel_model.dart';
import '../../routes/my_route.dart';
import 'card_home.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(screenWidth * 0.04),
      physics: const BouncingScrollPhysics(),
      itemCount: travelList.length,
      itemBuilder: (context, index) {
        final item = travelList[index];

        return GestureDetector(
          onTap: () {
            context.goNamed(RouteName.detailHome, extra: item);
          },
          child: CardHome(
              screenHeight: screenHeight, item: item, screenWidth: screenWidth),
        );
      },
    );
  }
}
