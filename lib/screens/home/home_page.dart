import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:look_it_up/blocs/search_api/search_api_bloc.dart';
import 'package:look_it_up/screens/home/widgets/custom_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomSearchBar(
              onSearch: (query) {
                context
                    .read<SearchApiBloc>()
                    .add(SearchDefinitionOfWordEvent(word: query));
              },
            ),
            const SizedBox(height: 16),
            BlocBuilder<SearchApiBloc, SearchApiState>(
              builder: (context, state) {
                if (state is SearchApiLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SearchApiLoaded) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.definitions.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            state.definitions[index].hwi.hw,
                          ),
                        );
                      },
                    ),
                  );
                } else if (state is SearchApiError) {
                  return Center(child: Text(state.error));
                } else if (state is SearchApiEmpty) {
                  return Center(child: Text(state.message));
                }
                return const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }
}
