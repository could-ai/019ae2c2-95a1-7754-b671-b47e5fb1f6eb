import 'package:flutter/material.dart';
import '../models/user.dart';

// Home dashboard showing user name and quick navigation buttons
class HomeDashboard extends StatelessWidget {
  final User user;
  const HomeDashboard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome, ${user.name}')),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildButton(context, 'Classes', Icons.class_, '/classes'),
          _buildButton(context, 'Routine', Icons.schedule, '/routine'),
          _buildButton(context, 'Notices', Icons.announcement, '/notices'),
          _buildButton(context, 'Homework', Icons.assignment, '/homework'),
          _buildButton(context, 'Results', Icons.grade, '/results'),
          _buildButton(context, 'Teachers', Icons.people, '/teachers'),
          _buildButton(context, 'Settings', Icons.settings, '/settings'),
        ],
      ),
    );
  }

  // Helper to build navigation buttons
  Widget _buildButton(BuildContext context, String title, IconData icon, String route) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route, arguments: user),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48),
            Text(title),
          ],
        ),
      ),
    );
  }
}