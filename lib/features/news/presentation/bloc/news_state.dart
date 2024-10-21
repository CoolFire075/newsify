part of 'news_bloc.dart';

class NewsState extends Equatable {
  final NewsMainModel? data;
  final bool isLoading;

  const NewsState({
    this.data,
    required this.isLoading,
  });

  NewsState copyWith({
    NewsMainModel? data,
    bool? isLoading,
  }) {
    return NewsState(
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [
        data,
        isLoading,
      ];
}
