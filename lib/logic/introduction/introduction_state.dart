part of 'introduction_bloc.dart';

sealed class IntroductionState {}

final class IntroductionInitial extends IntroductionState {}

final class TimerFinishedState extends IntroductionState {}
