part of 'news_detailed_bloc.dart';

class NewsDetailedState extends Equatable {
  final bool needPop;
  final bool isLoading;
  final NewsDataModel? data;

  const NewsDetailedState({
    required this.needPop,
    required this.isLoading,
    this.data,
  });

  NewsDetailedState copyWith({
    bool? needPop,
    bool? isLoading,
    NewsDataModel? countryModels,
  }) {
    return NewsDetailedState(
      needPop: needPop ?? this.needPop,
      isLoading: isLoading ?? this.isLoading,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [
        needPop,
        data,
        isLoading,
      ];
}
