import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsify/core/di/dependency_injection.dart';
import 'package:newsify/core/navigation/routes/country_route.dart';
import 'package:newsify/core/navigation/routes/language_route.dart';
import 'package:newsify/core/navigation/routes/news_detailed_route.dart';

import '../../../../core/network/constants.dart';
import '../../../../generated/l10n.dart';
import '../bloc/news_bloc.dart';
import '../models/news_data_model.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(getIt(), getIt(), getIt())
        ..add(NewsListLoaded())
        ..add(NewsListSubscribed()),
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            AnimatedSettingsIconWidget(),
          ],
          backgroundColor: NetworkConstants.appBarColor,
          centerTitle: true,
          title:  Text(
            S.of(context).news,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            final data = state.data?.data;
            return ListView(
              children: [
                if (data != null)
                  ...data.map(
                    (e) => e != null
                        ? _NewsWidget(
                            data: e,
                          )
                        : const SizedBox(),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _NewsWidget extends StatelessWidget {
  const _NewsWidget({super.key, required this.data});

  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewsBloc>();
    return Container(color: Colors.grey.shade400,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 32.0),
          child: Column(
            children: [
              _ImageBoxWidget(bloc: bloc, data: data),
              _DescriptionTextBoxWidget(data: data),
              _ActionButtonsRow(data: data, bloc: bloc),
              // const _DividerWidget()
            ],
          ),
      ),
    );
  }
}

class _DividerWidget extends StatelessWidget {
  const _DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 10,
      endIndent: 10,
      height: 100,
    );
  }
}

class _ActionButtonsRow extends StatelessWidget {
  const _ActionButtonsRow({
    super.key,
    required this.data,
    required this.bloc,
  });

  final NewsDataModel data;
  final NewsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: NetworkConstants.blue,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _ShowMoreButton(data: data, bloc: bloc),
            _LikeButton(bloc: bloc, data: data),
          ],
        ),
      ),
    );
  }
}

class _LikeButton extends StatelessWidget {
  const _LikeButton({
    super.key,
    required this.bloc,
    required this.data,
  });

  final NewsBloc bloc;
  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: MaterialButton(
            onPressed: () {
              bloc.add(NewsLikeButtonClicked(data: data));
            },
            onLongPress: onLongPressAction,
            child: Icon(
              Icons.favorite,
              color: data.isPostLiked == true ? Colors.red : Colors.grey.shade300,
            ),
          ),
        );
      },
    );
  }
}

class _DescriptionTextBoxWidget extends StatelessWidget {
  const _DescriptionTextBoxWidget({
    super.key,
    required this.data,
  });

  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.push(NewsDetailedRoute.getRouteWithArgs(), extra: data);
      },
      child: Container(
        color: NetworkConstants.blue,
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0),
          child: ListTile(
            title: _TitleTextWidget(data: data),
            subtitle: _MoreInfoTextWidget(data: data),
          ),
        ),
      ),
    );
  }
}

class _MoreInfoTextWidget extends StatelessWidget {
  const _MoreInfoTextWidget({
    super.key,
    required this.data,
  });

  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _AuthorTextWidget(data: data),
        // _PublishedAtTextWidget(data: data),
      ],
    );
  }
}

class _TitleTextWidget extends StatelessWidget {
   _TitleTextWidget({
    super.key,
    required this.data,
  });

  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      data.title ?? '',
      style:  TextStyle(color: Colors.black, fontSize: 20),
    );
  }
}

class _AuthorTextWidget extends StatelessWidget {
  const _AuthorTextWidget({
    super.key,
    required this.data,
  });

  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      data.author ?? '',
      style: TextStyle(color: Colors.grey.shade600),
    );
  }
}

class _ImageBoxWidget extends StatelessWidget {
  const _ImageBoxWidget({
    super.key,
    required this.bloc,
    required this.data,
  });

  final NewsBloc bloc;
  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
      child: Container(
        // foregroundDecoration: BoxDecoration(color: Colors.blue.withOpacity(0.3)),
        decoration: BoxDecoration(
            color: NetworkConstants.blue,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        width: double.infinity,
        child: _LikeIconAnimatedWidget(data: data),
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage({
    super.key,
    required this.data,
  });

  final NewsDataModel data;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        data.image == null
            ? const SizedBox()
            : showDialog(
                context: context,
                builder: (context) {
                  return SizedBox(
                    width: 500,
                    child: Dialog(
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      child: Image.network(
                        fit: BoxFit.cover,
                        data.image!,
                      ),
                    ),
                  );
                },
              );
      },
      child: Image.network(
        data.image ?? '',
        fit: BoxFit.fitWidth,
        errorBuilder: ((context, objectException, stackTrace) => Image.asset(
              'assets/images/im_question.jpg',
              height: 200,
              width: 200,
            )),
      ),
    );
  }
}

void onLongPressAction() {
  _LikeIconAnimatedWidget;
}

class _ShowMoreButton extends StatelessWidget {
  const _ShowMoreButton({
    super.key,
    required this.data,
    required this.bloc,
  });

  final NewsDataModel data;
  final NewsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MaterialButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return _MoreActionsDialog(
                    data: data,
                    bloc: bloc,
                  );
                },
              );
            },
            child: Icon(
              Icons.more_vert,
              color: Colors.grey.shade700,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class _MoreActionsDialog extends StatelessWidget {
  const _MoreActionsDialog({
    super.key,
    required this.data,
    required this.bloc,
  });

  final NewsDataModel data;
  final NewsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const _OtherFeaturesButtonRow(),
          Divider(color: Colors.grey.shade300),
          _HideButtonRow(data: data, bloc: bloc),
        ],
      ),
    );
  }
}

class _HideButtonRow extends StatelessWidget {
  const _HideButtonRow({
    super.key,
    required this.data,
    required this.bloc,
  });

  final NewsDataModel data;
  final NewsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        bloc.add(NewsHideButtonClicked(data: data));
        Navigator.pop(context);
      },
      child: Row(
        children: [
          const Icon(
            Icons.image_not_supported_outlined,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(S.of(context).hide),
          )
        ],
      ),
    );
  }
}

class _OtherFeaturesButtonRow extends StatelessWidget {
  const _OtherFeaturesButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            S.of(context).other_features,
            style: const TextStyle(fontSize: 20),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class AnimatedSettingsIconWidget extends StatefulWidget {
  const AnimatedSettingsIconWidget({super.key});

  @override
  State<AnimatedSettingsIconWidget> createState() => _AnimatedSettingsIconWidgetState();
}

class _AnimatedSettingsIconWidgetState extends State<AnimatedSettingsIconWidget> {
  double _angle = 0;

  void _rotateIcon() {
    setState(() {
      _angle += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: _angle,
      duration: const Duration(
        seconds: 1,
      ),
      child: IconButton(
        onPressed: () {
          _rotateIcon();
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.blue.shade50,
                actions: [
                  _SettingsTitleWidget(),
                  Divider(),
                  _ChangeLanguageWidget(),
                  _ChangeCountryWidget(),
                ],
              );
            },
          );
        },
        icon: const Icon(
          Icons.settings,
        ),
      ),
    );
  }
}

class _SettingsTitleWidget extends StatelessWidget {
  const _SettingsTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).settings,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _ChangeCountryWidget extends StatelessWidget {
  const _ChangeCountryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.pop();
            context.go(CountryRoute.getRouteWithArgs());
          },
          child: Text(
            S.of(context).change_country,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}

class _ChangeLanguageWidget extends StatelessWidget {
  const _ChangeLanguageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final bloc = context.read<NewsBloc>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.pop();
            // context.push('/news').then((value) {
            //   if(value == false) return
            //   bloc.add(NewsListLoaded());
            // });
            context.go(LanguageRoute.getRouteWithArgs());
          },
          child: Text(
            S.of(context).change_language,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}

class _LikeIconAnimatedWidget extends StatefulWidget {
  final NewsDataModel data;

  const _LikeIconAnimatedWidget({super.key, required this.data});

  @override
  State<_LikeIconAnimatedWidget> createState() => _LikeIconAnimatedWidgetState();
}

class _LikeIconAnimatedWidgetState extends State<_LikeIconAnimatedWidget> {
  bool _isHeartVisible = false;

  void _showHeart() {
    setState(() {
      _isHeartVisible = true;
    });

    Future.delayed(Duration(milliseconds: 600), () {
      setState(() {
        _isHeartVisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewsBloc>();
    return GestureDetector(
      onDoubleTap: () {
        bloc.add(NewsImageDoubleTapped(data: widget.data));
        _showHeart();
      },
      child: Stack(alignment: Alignment.center, children: [
        MaterialButton(
          onPressed: () {
            widget.data.image == null
                ? const SizedBox()
                : showDialog(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        width: 500,
                        child: Dialog(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          child: Image.network(
                            fit: BoxFit.cover,
                            widget.data.image!,
                          ),
                        ),
                      );
                    },
                  );
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  widget.data.image ?? '',
                  fit: BoxFit.cover,
                  width: 400,
                  errorBuilder: ((context, objectException, stackTrace) => Image.asset(
                        'assets/images/im_question.jpg',
                        height: 200,
                        width: 200,
                      )),
                ),
              ),
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: _isHeartVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 100,
          ),
        ),
      ]),
    );
  }
}
