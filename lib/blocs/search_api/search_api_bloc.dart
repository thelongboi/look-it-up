import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:look_it_up/constants/constant_string.dart';
import 'package:look_it_up/models/search_result.dart';
import 'package:look_it_up/repositories/search_repository.dart';

part 'search_api_event.dart';
part 'search_api_state.dart';

class SearchApiBloc extends Bloc<SearchApiEvent, SearchApiState> {
  SearchRepository searchRepository;

  SearchApiBloc({required this.searchRepository}) : super(SearchApiInitial()) {
    on<SearchDefinitionOfWordEvent>(_onSearchDefinitionOfWord);
  }

  void _onSearchDefinitionOfWord(
      SearchDefinitionOfWordEvent event, Emitter<SearchApiState> emit) async {
    emit(SearchApiLoading());
    try {
      final List<SearchResult> definitions =
          await searchRepository.getDefinitions(event.word);

      if (definitions.isEmpty) {
        emit(SearchApiEmpty(message: noDefinitionsFound + event.word));
        return;
      }

      emit(SearchApiLoaded(definitions: definitions));
    } catch (e) {
      emit(SearchApiError(error: e.toString()));
    }
  }
}
