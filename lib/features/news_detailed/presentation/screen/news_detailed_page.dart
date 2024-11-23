import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsify/features/news/presentation/bloc/news_bloc.dart';
import 'package:newsify/features/news/presentation/models/news_data_model.dart';
import 'package:newsify/features/news_detailed/presentation/bloc/news_detailed_bloc.dart';

import '../../../../core/di/dependency_injection.dart';

class NewsDetailedPage extends StatelessWidget {
  const NewsDetailedPage({super.key, this.model});

  final NewsDataModel? model;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<NewsDetailedBloc>(param1: model)..add(NewsDetailedPageLoaded()),
      child: Scaffold(
        appBar: AppBar(),
        body: model != null ? _Body(model: model!) : const SizedBox(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
    required this.model,
  });

  final NewsDataModel model;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsDetailedBloc, NewsDetailedState>(
      builder: (context, state) {
        return ListView(
          children: [
            _TitleTextWidget(model: model),
            _ImageWidget(model: model),
            _DescriptionTextWidget(model: model),
            _AuthorTextWidget(model: model),
            model.country != null
                ? Text(
                    "Country: ${model.country ?? ''}",
                    style: const TextStyle(fontSize: 30),
                  )
                : const SizedBox(),
          ],
        );
      },
    );
  }
}

class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({super.key, required this.model});

  final NewsDataModel model;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        model.title ?? '',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({super.key, required this.model});

  final NewsDataModel model;

  @override
  Widget build(BuildContext context) {
    return model.image != null
        ? Image.network(errorBuilder: ((context, objectException, stackTrace) => Image.asset(
      'assets/images/im_question.jpg',
      height: 200,
      width: 200,
    )),
            model.image!,
            width: double.infinity,
            fit: BoxFit.cover,
          )
        : Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NO IMAGE',
                  style: TextStyle(fontSize: 40, color: Colors.redAccent.shade100),
                ),
              ],
            ),
          );
  }
}

class _DescriptionTextWidget extends StatelessWidget {
  const _DescriptionTextWidget({super.key, required this.model});

  final NewsDataModel model;

  @override
  Widget build(BuildContext context) {
    return model.description != null
        ? Text(
            model.description ?? '',
            style: const TextStyle(fontSize: 16),
          )
        : const SizedBox();
  }
}

class _AuthorTextWidget extends StatelessWidget {
  const _AuthorTextWidget({super.key, required this.model});

  final NewsDataModel model;

  @override
  Widget build(BuildContext context) {
    return model.author != null
        ? Text(
            "Author: ${model.author ?? ''}",
            style: const TextStyle(fontSize: 20),
          )
        : const SizedBox();
  }
}

class _DividerWidget extends StatelessWidget {
  const _DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(color: Colors.black);
  }
}
