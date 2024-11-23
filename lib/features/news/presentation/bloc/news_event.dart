part of 'news_bloc.dart';

class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object?> get props => [];
}

class NewsListLoaded extends NewsEvent {}

class NewsListSubscribed extends NewsEvent {}

class NewsHideButtonClicked extends NewsEvent {
  final NewsDataModel data;

  const NewsHideButtonClicked({required this.data});
}

class NewsLikeButtonClicked extends NewsEvent {
  final NewsDataModel data;

  const NewsLikeButtonClicked({required this.data});
}

class NewsImageDoubleTapped extends NewsEvent{
  final NewsDataModel data;

  const NewsImageDoubleTapped({required this.data});
}
