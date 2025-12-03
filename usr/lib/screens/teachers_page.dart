import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/teacher.dart';
import '../data/dummy_data.dart';

// Teachers page to list teacher information
class TeachersPage extends StatelessWidget {
  final User user;
  const TeachersPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teachers')),
      body: ListView.builder(
        itemCount: dummyTeachers.length,
        itemBuilder: (context, index) {
          final teacher = dummyTeachers[index];
          return ListTile(
            leading: teacher.photoUrl != null ? CircleAvatar(backgroundImage: NetworkImage(teacher.photoUrl!)) : const Icon(Icons.person),
            title: Text(teacher.name),
            subtitle: Text('${teacher.subject}\n${teacher.phone}'),
          );
        },
      ),
    );
  }
}