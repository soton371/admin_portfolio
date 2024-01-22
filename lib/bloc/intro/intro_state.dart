part of 'intro_bloc.dart';

abstract class IntroState extends Equatable {
  const IntroState();

  @override
  List<Object> get props => [];
}

class IntroInitial extends IntroState {}

//for add
class AddLoadingIntro extends IntroState {}
class AddSuccessIntro extends IntroState {}
class AddFailedIntro extends IntroState {
  final String title,message;
  const AddFailedIntro({required this.title, required this.message});
}

//for update
class UpdateLoadingIntro extends IntroState {}
class UpdateSuccessIntro extends IntroState {}
class UpdateFailedIntro extends IntroState {
  final String title,message;
  const UpdateFailedIntro({required this.title, required this.message});
}

//for delete
class DeleteLoadingIntro extends IntroState {}
class DeleteSuccessIntro extends IntroState {}
class DeleteFailedIntro extends IntroState {
  final String title,message;
  const DeleteFailedIntro({required this.title, required this.message});
}
