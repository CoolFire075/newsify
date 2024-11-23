part of 'favourite_news_bloc.dart';

class FavouriteNewsState extends Equatable {
  final bool needPop;
  final bool isLoading;
  final List<NewsDataModel>? favouriteNews;

  const FavouriteNewsState({
    required this.needPop,
    required this.isLoading,
    this.favouriteNews,
  });

  FavouriteNewsState copyWith({
    bool? needPop,
    bool? isLoading,
    List<NewsDataModel>? favouriteNews,
  }) {
    return FavouriteNewsState(
      needPop: needPop ?? this.needPop,
      isLoading: isLoading ?? this.isLoading,
      favouriteNews: favouriteNews ?? this.favouriteNews,
    );
  }

  @override
  List<Object?> get props => [
        needPop,
        isLoading,
        favouriteNews,
      ];
}
