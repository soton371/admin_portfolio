part of 'intro_bloc.dart';

abstract class IntroEvent extends Equatable {
  const IntroEvent();
  @override
  List<Object> get props => [];
}

class AddIntro extends IntroEvent {}
class UpdateIntro extends IntroEvent {}
class DeleteIntro extends IntroEvent {}
