part of 'search_api_bloc.dart';

sealed class SearchApiState extends Equatable {
  const SearchApiState();

  @override
  List<Object> get props => [];
}

final class SearchApiInitial extends SearchApiState {}

final class SearchApiLoading extends SearchApiState {}

final class SearchApiLoaded extends SearchApiState {
  final List<SearchResult> definitions;

  const SearchApiLoaded({required this.definitions});

  @override
  List<Object> get props => [definitions];
}

final class SearchApiError extends SearchApiState {
  final String error;

  const SearchApiError({required this.error});

  @override
  List<Object> get props => [error];
}

final class SearchApiEmpty extends SearchApiState {
  final String message;

  const SearchApiEmpty({required this.message});

  @override
  List<Object> get props => [message];
}
