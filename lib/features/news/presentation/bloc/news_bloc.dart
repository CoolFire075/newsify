import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/country/domain/interactor/country_interactor.dart';
import 'package:newsify/features/news/domain/news_interactor.dart';
import 'package:newsify/features/news/presentation/models/news_data_model.dart';

import '../mappers/news_model_mapper.dart';
import '../models/news_main_model.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.interactor, this.mapper, this.countryInteractor) : super(const NewsState(isLoading: false)) {
    on<NewsListLoaded>(_onNewsListLoaded);
    on<NewsHideButtonClicked>(_onNewsHideButtonClicked);
    on<NewsLikeButtonClicked>(_onNewsLikeButtonClicked);
    on<NewsImageDoubleTapped>(_onNewsImageDoubleTapped);
    on<NewsListSubscribed>(_onNewsListSubscribed);
  }

  final NewsInteractor interactor;
  final NewsModelMapper mapper;
  final CountryInteractor countryInteractor;

  void _onNewsListSubscribed(
      NewsListSubscribed event,
      Emitter<NewsState> emit,
      ) {
    interactor.newsListStream.listen(
          (newsList) => emit(
        state.copyWith(favouriteNews: newsList),
      ),
    );
  }

  void _onNewsListLoaded(
    NewsListLoaded event,
    Emitter<NewsState> emit,
  ) async {
    final countries = await countryInteractor.getCountries();
    final news = await interactor.fetchNewsData(countries);
    if(news != null){
      final data = mapper.mapNewsModel(news);
      interactor.saveNewsList(data.data ?? []);
    }

    debugPrint(news.toString());
    if (news != null) {
      emit(state.copyWith(data: mapper.mapNewsModel(news)));
    }
  }

  void _onNewsHideButtonClicked(
    NewsHideButtonClicked event,
    Emitter<NewsState> emit,
  ) {
    debugPrint('###I work!!!');
    final news = event.data;
    final list = state.data;
    final favouriteNews = state.favouriteNews;
    if (list == null || list.data == null) return;
    final index = list.data!.indexOf(news);
    final newList = [...list.data!.sublist(0, index), ...list.data!.sublist(index + 1)];
    if (favouriteNews == null || !favouriteNews.contains(news)) {
      emit(state.copyWith(data: list.copyWith(data: newList)));
      return;
    }
    final favouritePostIndex = favouriteNews.indexOf(news);
    final newFavouriteNews = [
      ...favouriteNews.sublist(0, favouritePostIndex),
      ...favouriteNews.sublist(favouritePostIndex + 1)
    ];
    emit(state.copyWith(data: list.copyWith(data: newList), favouriteNews: newFavouriteNews));

  }

  void _onNewsLikeButtonClicked(
    NewsLikeButtonClicked event,
    Emitter<NewsState> emit,
  ) {
    final news = event.data;
    final list = state.data;

    if (list == null || list.data == null) return;
    final index = list.data!.indexOf(news);
    final listWithoutPost = list.data!.where((e) => e != news).toList();
    final newList = [
      ...listWithoutPost.sublist(0, index),
      news.copyWith(isPostLiked: news.isPostLiked == true ? false : true),
      ...listWithoutPost.sublist(index)
    ];

    final favouriteNews = state.favouriteNews;
    if (news.isPostLiked == true) {
      final newFavouriteNews = [news, ...?favouriteNews];
      emit(state.copyWith(data: list.copyWith(data: newList), favouriteNews: newFavouriteNews));
      return;
    }

    if (favouriteNews == null || !favouriteNews.contains(news)) {
      emit(state.copyWith(data: list.copyWith(data: newList)));
      return;
    }
    final favouritePostIndex = favouriteNews.indexOf(news);
    final newFavouriteNews = [
      ...favouriteNews.sublist(0, favouritePostIndex),
      ...favouriteNews.sublist(favouritePostIndex + 1)
    ];
    emit(state.copyWith(data: list.copyWith(data: newList), favouriteNews: newFavouriteNews));
  }

  void _onNewsImageDoubleTapped(
    NewsImageDoubleTapped event,
    Emitter<NewsState> emit,
  ) {
    final news = event.data;
    if (news.isPostLiked == true) return;
    final list = state.data;
    if (list == null || list.data == null) return;
    final index = list.data!.indexOf(news);
    final listWithoutPost = list.data!.where((e) => e != news).toList();
    final newList = [
      ...listWithoutPost.sublist(0, index),
      news.copyWith(isPostLiked: true),
      ...listWithoutPost.sublist(index)
    ];
    final favouriteNews = state.favouriteNews;
    final newFavouriteNews = [news, ...?favouriteNews];
    emit(state.copyWith(data: list.copyWith(data: newList), favouriteNews: newFavouriteNews));
  }
}
