import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_project/app/core/utils/keys.dart';

class StorageService extends GetxService {
  late GetStorage _box;
  Future<StorageService> init() async {
    _box = GetStorage();
    await _box.writeIfNull(taskKey, []);
    return this;
  }
}
