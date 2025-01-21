import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabak_19_blok_news_app/model.dart';
import 'package:sabak_19_blok_news_app/server.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final ServiceData serviceData;
  NewsBloc({required this.serviceData}) : super(LoadingState()) {
    on<NewsEvent>((NewsEvent event, Emitter<NewsState> emit) async {
      emit(LoadingState());
      try {
        final news = await serviceData.fetchData();
        emit(LoadedState(news: news!));
      } catch (e) {
        emit(ErrorState(errorText: e.toString()));
      }
    });
  }
}
