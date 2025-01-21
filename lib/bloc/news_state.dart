part of 'news_bloc.dart';

sealed class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

// final class NewsInitial extends NewsState {}

final class LoadingState extends NewsState {}

final class ErrorState extends NewsState {
  final String errorText;

  const ErrorState({required this.errorText});
}

final class LoadedState extends NewsState {
  final News news;

  const LoadedState({required this.news});
}
