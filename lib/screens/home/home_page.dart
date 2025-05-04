import 'package:flutter/material.dart';
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
                // Handle the search query here
                print('Search query from HomePage: $query');
              },
            ),
          ],
        ),
      ),
    );
  }
}
