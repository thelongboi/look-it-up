import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:look_it_up/config/bloc_providers.dart';
import 'package:look_it_up/config/repo_providers.dart';
import 'package:look_it_up/config/router_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: repoProviders,
      child: MultiBlocProvider(
        providers: blocProviders,
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
