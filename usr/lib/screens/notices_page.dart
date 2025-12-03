import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/notice.dart';
import '../data/dummy_data.dart';

// Notices page to display school announcements
class NoticesPage extends StatelessWidget {
  final User user;
  const NoticesPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notices')),
      body: ListView.builder(
        itemCount: dummyNotices.length,
        itemBuilder: (context, index) {
          final notice = dummyNotices[index];
          return Card(
            child: ListTile(
              title: Text(notice.title),
              subtitle: Text('${notice.description}\n${notice.date.toLocal()}'),
            ),
          );
        },
      ),
    );
  }
}