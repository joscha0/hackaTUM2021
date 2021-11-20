import 'package:flutter/material.dart';
import 'package:uplant/modules/projects/projects_view.dart';
import 'package:get/get.dart';

import 'services/auth_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.green,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
      darkTheme: ThemeData.dark().copyWith(
          primaryColor: Colors.green,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
      themeMode: ThemeMode.system,
      home: ProjectsView(),
      initialBinding: BindingsBuilder(
        () {
          Get.put(AuthService());
        },
      ),
    );
  }
}
