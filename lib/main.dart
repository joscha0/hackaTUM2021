import 'package:flutter/material.dart';
import 'package:gardening/modules/home/home_view.dart';
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
      theme: ThemeData.light().copyWith(primaryColor: Colors.blue),
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.blue),
      themeMode: ThemeMode.system,
      home: const HomeView(),
      initialBinding: BindingsBuilder(
        () {
          Get.put(AuthService());
        },
      ),
    );
  }
}
