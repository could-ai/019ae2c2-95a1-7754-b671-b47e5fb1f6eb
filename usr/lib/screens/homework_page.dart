import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/homework.dart';
import '../data/dummy_data.dart';

// Homework page with list, add for teachers, mark done for students
class HomeworkPage extends StatefulWidget {
  final User user;
  const HomeworkPage({super.key, required this.user});

  @override
  State<HomeworkPage> createState() => _HomeworkPageState();
}

class _HomeworkPageState extends State<HomeworkPage> {
  late List<Homework> homeworks;

  @override
  void initState() {
    super.initState();
    homeworks = List.from(dummyHomeworks); // Copy for mutability
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homework')),
      body: ListView.builder(
        itemCount: homeworks.length,
        itemBuilder: (context, index) {
          final hw = homeworks[index];
          return ListTile(
            title: Text(hw.title),
            subtitle: Text('${hw.subject} - Due: ${hw.dueDate.toLocal()}'),
            trailing: widget.user.role == 'Student' ? Checkbox(
              value: hw.isDone,
              onChanged: (value) => setState(() => hw.isDone = value!),
            ) : null,
          );
        },
      ),
      floatingActionButton: widget.user.role == 'Teacher' ? FloatingActionButton(
        onPressed: _addHomework,
        child: const Icon(Icons.add),
      ) : null,
    );
  }

  // Dialog to add homework (for teachers)
  void _addHomework() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Homework'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(decoration: const InputDecoration(labelText: 'Title')),
            // Additional fields can be added here
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(onPressed: () {
            setState(() => homeworks.add(Homework('${homeworks.length + 1}', 'New HW', 'Desc', 'Subject', DateTime.now().add(Duration(days: 1)), false)));
            Navigator.pop(context);
          }, child: const Text('Add')),
        ],
      ),
    );
  }
}