part of 'language_bloc.dart';
class LanguageEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class LanguageButtonClicked extends LanguageEvent {
  final LanguageModel model;

   LanguageButtonClicked({required this.model});
}

class LanguageLoaded extends LanguageEvent {}
