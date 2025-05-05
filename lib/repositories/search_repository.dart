import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:look_it_up/constants/app_route.dart';
import 'package:look_it_up/constants/secrets.dart';
import 'package:look_it_up/models/dictionary_entry.dart';

class SearchRepository {
  Future<List<DictionaryEntry>> getDefinitions(String word) async {
    final url = '${AppRoute.baseUrl}$word?key=${Secrets.apiKey}';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);

        // Parse the response into a list of `SearchResult` objects
        return data.map((json) => DictionaryEntry.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch definitions: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred while fetching definitions: $e');
    }
  }
}
