import '../models/user.dart';
import '../models/homework.dart';
import '../models/notice.dart';
import '../models/result.dart';
import '../models/teacher.dart';

// Dummy data for demonstration purposes (no backend)
List<User> dummyUsers = [
  User('John Doe', 'student@example.com', 'Student'),
  User('Jane Smith', 'teacher@example.com', 'Teacher'),
];

List<Homework> dummyHomeworks = [
  Homework('1', 'Math Assignment', 'Solve problems 1-10', 'Math', DateTime.now().add(Duration(days: 2)), false),
  Homework('2', 'Science Project', 'Build a model', 'Science', DateTime.now().add(Duration(days: 5)), false),
];

List<Notice> dummyNotices = [
  Notice('1', 'School Holiday', 'School will be closed on Monday', DateTime.now()),
  Notice('2', 'Exam Schedule', 'Final exams start next week', DateTime.now().subtract(Duration(days: 1))),
];

List<Result> dummyResults = [
  Result('Math', 85.0, 'A'),
  Result('Science', 92.0, 'A'),
  Result('English', 78.0, 'B'),
];

List<Teacher> dummyTeachers = [
  Teacher('Mr. Brown', 'Math', '123-456-7890', null),
  Teacher('Ms. Green', 'Science', '098-765-4321', null),
];
