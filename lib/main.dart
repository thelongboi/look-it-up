import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:look_it_up/blocs/search_api/search_api_bloc.dart';
import 'package:look_it_up/config/router_config.dart';
import 'package:look_it_up/repositories/search_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SearchRepository>(
          create: (context) => SearchRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SearchApiBloc(
              searchRepository:
                  RepositoryProvider.of<SearchRepository>(context),
            ),
          )
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: routerConfig,
          builder: (context, child) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Colors.white,
                body: child,
              ),
            );
          },
        ),
      ),
    );
  }
}
