import 'dart:async';

import 'package:bloc/bloc.dart';

part 'introduction_event.dart';
part 'introduction_state.dart';

class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc() : super(IntroductionInitial()) {
    on<StartTimerEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 5));
      emit(TimerFinishedState());
    });
  }
}
