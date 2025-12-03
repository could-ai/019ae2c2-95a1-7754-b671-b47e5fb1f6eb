import 'package:flutter/material.dart';
import '../models/user.dart';

// Class routine page with daily and weekly views using tabs and table UI
class ClassRoutinePage extends StatefulWidget {
  final User user;
  const ClassRoutinePage({super.key, required this.user});

  @override
  State<ClassRoutinePage> createState() => _ClassRoutinePageState();
}

class _ClassRoutinePageState extends State<ClassRoutinePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Routine'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Daily'),
            Tab(text: 'Weekly'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildDailyRoutine(),
          _buildWeeklyRoutine(),
        ],
      ),
    );
  }

  // Daily routine using a table
  Widget _buildDailyRoutine() {
    List<List<String>> routine = [
      ['Time', 'Subject', 'Teacher'],
      ['9:00-10:00', 'Math', 'Mr. Brown'],
      ['10:00-11:00', 'Science', 'Ms. Green'],
    ];
    return Table(
      border: TableBorder.all(),
      children: routine.map((row) => TableRow(
        children: row.map((cell) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(cell),
        )).toList(),
      )).toList(),
    );
  }

  // Weekly routine as expandable tiles
  Widget _buildWeeklyRoutine() {
    return ListView(
      children: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'].map((day) => ExpansionTile(
        title: Text(day),
        children: [_buildDailyRoutine()], // Reuse daily for simplicity
      )).toList(),
    );
  }
}