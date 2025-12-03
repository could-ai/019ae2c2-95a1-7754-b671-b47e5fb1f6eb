import 'package:flutter/material.dart';
import '../models/user.dart';

// Classes page to list available classes
class ClassesPage extends StatelessWidget {
  final User user;
  const ClassesPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    // Dummy list of classes
    List<String> classes = ['Math 101', 'Science 101', 'English 101'];
    return Scaffold(
      appBar: AppBar(title: const Text('Classes')),
      body: ListView.builder(
        itemCount: classes.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(classes[index]),
        ),
      ),
    );
  }
}