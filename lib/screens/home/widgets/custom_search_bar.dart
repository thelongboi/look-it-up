import 'dart:async';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final ValueChanged<String> onSearch;

  const CustomSearchBar({super.key, required this.onSearch});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 5000), () {
      widget.onSearch(query);
    });
  }

  void _onSubmitted(String query) {
    // Cancel the debounce timer and fire the search immediately
    _debounce?.cancel();
    widget.onSearch(query);
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: _searchController,
      onChanged: _onSearchChanged,
      onSubmitted: _onSubmitted, // Trigger search on Enter key press
      leading: const Icon(Icons.search),
    );
  }
}
