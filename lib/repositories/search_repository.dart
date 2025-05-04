import 'package:look_it_up/models/search_result.dart';

class SearchRepository {
  Future<List<SearchResult>> getDefinitions(String word) async {
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));
    return [];
  }
}
