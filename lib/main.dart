import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_project/app/data/services/storage/services.dart';
import 'package:todo_project/app/modules/home/binding.dart';
import 'package:todo_project/app/modules/home/view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Todo Project with Getx',
      home: const Homepage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}
