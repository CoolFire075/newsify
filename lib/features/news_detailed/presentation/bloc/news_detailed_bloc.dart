import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/news/presentation/models/news_data_model.dart';

part 'news_detailed_event.dart';

part 'news_detailed_state.dart';

class NewsDetailedBloc extends Bloc<NewsDetailedEvent, NewsDetailedState> {
  NewsDetailedBloc(this.data) : super(const NewsDetailedState(isLoading: false, needPop: false)) {
    on<NewsDetailedPageLoaded>(_onNewsDetailedPageLoaded);
  }

  final NewsDataModel? data;

  void _onNewsDetailedPageLoaded(
    NewsDetailedPageLoaded event,
    Emitter<NewsDetailedState> emit,
  ) {
    // debugPrint('### $data');
    final news = data;
    emit(state.copyWith(countryModels: news));
  }
}
