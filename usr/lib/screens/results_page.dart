import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/result.dart';
import '../data/dummy_data.dart';

// Results page to show student marks
class ResultsPage extends StatelessWidget {
  final User user;
  const ResultsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Results')),
      body: ListView.builder(
        itemCount: dummyResults.length,
        itemBuilder: (context, index) {
          final result = dummyResults[index];
          return ListTile(
            title: Text(result.subject),
            subtitle: Text('Score: ${result.score}, Grade: ${result.grade}'),
          );
        },
      ),
    );
  }
}