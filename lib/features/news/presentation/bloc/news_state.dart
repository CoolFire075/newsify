part of 'news_bloc.dart';

class NewsState extends Equatable {
  final NewsMainModel? data;
  final bool isLoading;
  final List<NewsDataModel>? favouriteNews;

  const NewsState({this.data, required this.isLoading, this.favouriteNews});

  NewsState copyWith({
    NewsMainModel? data,
    bool? isLoading,
    List<NewsDataModel>? favouriteNews,
  }) {
    return NewsState(
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
      favouriteNews: favouriteNews ?? this.favouriteNews,
    );
  }

  @override
  List<Object?> get props => [
        data,
        isLoading,
        favouriteNews,
      ];
}
