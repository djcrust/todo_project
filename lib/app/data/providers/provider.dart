import 'dart:convert';

import 'package:get/get.dart';
import 'package:todo_project/app/core/utils/keys.dart';
import 'package:todo_project/app/data/models/task.dart';
import 'package:todo_project/app/data/services/storage/services.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }
}