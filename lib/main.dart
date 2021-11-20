import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uplant/modules/projects/projects_view.dart';
import 'package:get/get.dart';

import 'services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.green,
        primary: Colors.green,
      )),
      darkTheme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.green,
        primary: Colors.green,
      )),
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
