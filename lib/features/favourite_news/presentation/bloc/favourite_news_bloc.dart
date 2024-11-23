import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/news/domain/news_interactor.dart';
import 'package:newsify/features/news/presentation/models/news_data_model.dart';

part 'favourite_news_event.dart';

part 'favourite_news_state.dart';

class FavouriteNewsBloc extends Bloc<FavouriteNewsEvent, FavouriteNewsState> {
  FavouriteNewsBloc(this._interactor)
      : super(const FavouriteNewsState(isLoading: false, needPop: false)) {
    on<FavouriteNewsPageLoaded>(_onFavouriteNewsPageLoaded);
    on<FavouriteNewsLikeButtonClicked>(_onFavouriteNewsLikeButtonClicked);
  }

  final NewsInteractor _interactor;

  void _onFavouriteNewsPageLoaded(
    FavouriteNewsPageLoaded event,
    Emitter<FavouriteNewsState> emit,
  ) {
    _interactor.newsListStream.listen(
      (newsList) => emit(
        state.copyWith(favouriteNews: newsList),
      ),
    );
  }

  void _onFavouriteNewsLikeButtonClicked(
    FavouriteNewsLikeButtonClicked event,
    Emitter<FavouriteNewsState> emit,
  ) {
    final post = event.data;
    final newsList = _interactor.getNewsList()!.where((e) => e != post).toList();
    _interactor.saveNewsList(newsList);
  }
}
