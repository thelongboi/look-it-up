import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:look_it_up/repositories/search_repository.dart';

List<RepositoryProvider> repoProviders = [
  RepositoryProvider<SearchRepository>(
    create: (context) => SearchRepository(),
  ),
];
