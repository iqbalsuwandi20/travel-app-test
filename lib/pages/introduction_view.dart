import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../logic/introduction/introduction_bloc.dart';
import '../routes/my_route.dart';
import '../widgets/introduction/stack_introduction.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    return BlocProvider(
      create: (context) => IntroductionBloc()..add(StartTimerEvent()),
      child: BlocListener<IntroductionBloc, IntroductionState>(
        listener: (context, state) {
          if (state is TimerFinishedState) {
            context.goNamed(RouteName.home);
          }
        },
        child: Scaffold(
          body: StackIntroduction(
              screenWidth: screenWidth, screenHeight: screenHeight),
        ),
      ),
    );
  }
}
