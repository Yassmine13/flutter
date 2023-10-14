import 'package:uuid/uuid.dart';

// Create a UUID instance for generating unique IDs
const uuid = Uuid();

// Define an enumeration for task categories
enum Category { personal, work, shopping, others }

// Define the Task class with required parameters and an ID generated by UUID
class Task {
  Task({
    required this.title,
    required this.description,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final String description;
  final DateTime date;
  final Category category;
}
