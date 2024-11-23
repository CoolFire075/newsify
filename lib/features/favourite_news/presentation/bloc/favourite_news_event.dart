part of 'favourite_news_bloc.dart';

class FavouriteNewsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FavouriteNewsPageLoaded extends FavouriteNewsEvent {}
class FavouriteNewsLikeButtonClicked extends FavouriteNewsEvent {
  final NewsDataModel data;

  FavouriteNewsLikeButtonClicked({required this.data});
}

