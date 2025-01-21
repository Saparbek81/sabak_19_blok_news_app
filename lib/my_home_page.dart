import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_19_blok_news_app/bloc/news_bloc.dart';
import 'package:sabak_19_blok_news_app/service.dart';
import 'package:sabak_19_blok_news_app/widgets/loading_widget.dart';
import 'package:sabak_19_blok_news_app/widgets/news_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('News App'),
        ),
      ),
      body: BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
        if (state is LoadingState) {
          return LoadingWidget();
        } else if (state is ErrorState) {
          return Text(state.errorText);
        } else if (state is LoadedState) {
          return ListView.builder(
              itemCount: state.news.articles?.length,
              itemBuilder: (context, index) {
                final news = state.news.articles?[index];
                return NewsCard(news: news);
              });
        }
        return Text("ERROR");
      }),
    );
  }
}
