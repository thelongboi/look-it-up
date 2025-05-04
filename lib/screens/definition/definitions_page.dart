import 'package:flutter/material.dart';

class DefinitionsPage extends StatelessWidget {
  final String word;

  const DefinitionsPage({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Definition of $word')),
      body: Center(
        child: Text('Here is the definition of "$word".'),
      ),
    );
  }
}
