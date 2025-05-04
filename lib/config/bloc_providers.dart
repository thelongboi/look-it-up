import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:look_it_up/blocs/search_api/search_api_bloc.dart';
import 'package:look_it_up/repositories/search_repository.dart';

List<BlocProvider> blocProviders = [
  BlocProvider(
    create: (context) => SearchApiBloc(
      searchRepository: RepositoryProvider.of<SearchRepository>(context),
    ),
  )
];
