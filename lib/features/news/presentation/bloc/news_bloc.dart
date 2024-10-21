import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/country/news_country.dart';
import 'package:newsify/features/news/my_features/news_language.dart';
import 'package:newsify/features/news/presentation/models/country_model.dart';
import 'package:newsify/features/news/presentation/models/language_model.dart';

import '../models/news_main_model.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(const NewsState(isLoading: false)) {


  }

}

