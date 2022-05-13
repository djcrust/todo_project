import 'package:get/get.dart';
import 'package:todo_project/app/data/providers/provider.dart';
import 'package:todo_project/app/data/services/storage/repository.dart';
import 'package:todo_project/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
