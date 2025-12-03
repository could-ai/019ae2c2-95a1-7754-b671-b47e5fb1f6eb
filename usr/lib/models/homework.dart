// Homework model for homework assignments
class Homework {
  String id;
  String title;
  String description;
  String subject;
  DateTime dueDate;
  bool isDone; // For students to mark as done

  Homework(this.id, this.title, this.description, this.subject, this.dueDate, this.isDone);
}