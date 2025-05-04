part of 'search_api_bloc.dart';

sealed class SearchApiEvent extends Equatable {
  const SearchApiEvent();

  @override
  List<Object> get props => [];
}

final class SearchDefinitionOfWordEvent extends SearchApiEvent {
  final String word;

  const SearchDefinitionOfWordEvent({required this.word});

  @override
  List<Object> get props => [word];
}
