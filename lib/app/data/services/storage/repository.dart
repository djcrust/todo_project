import 'package:todo_project/app/data/models/task.dart';
import 'package:todo_project/app/data/providers/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({
    required this.taskProvider,
  });

  List<Task> readTasks() => taskProvider.readTasks();

  void writeTask(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
