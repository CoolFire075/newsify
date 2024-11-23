import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/favourite_news/presentation/bloc/favourite_news_bloc.dart';
import 'package:newsify/features/news/presentation/models/news_data_model.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/network/constants.dart';
import '../../../../generated/l10n.dart';

class FavouriteNewsPage extends StatelessWidget {
  const FavouriteNewsPage({super.key, this.favouriteNews});

  final List<NewsDataModel>? favouriteNews;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<FavouriteNewsBloc>()..add(FavouriteNewsPageLoaded()),
      child: Scaffold(
        appBar: AppBar(backgroundColor: NetworkConstants.appBarColor,centerTitle: true,
          title: Text(S.of(context).favourite),
        ),
        body: favouriteNews != null
            ? _Body(
                favouriteNews: favouriteNews!,
              )
            : const SizedBox(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final List<NewsDataModel> favouriteNews;

  const _Body({
    super.key,
    required this.favouriteNews,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteNewsBloc, FavouriteNewsState>(
      builder: (context, state) {
        return ListView(
          children: [
            Text("${favouriteNews.map((e) => e.title)}"),
          ],
        );
      },
    );
  }
}
