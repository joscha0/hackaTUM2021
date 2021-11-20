import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repair/modules/profile/profile_view.dart';
import 'package:repair/services/app_pages.dart';
import 'package:repair/shared/text_styles.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'repair',
          style: heading,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_rounded),
            onPressed: () {
              Get.to(() => const ProfileView());
            },
          ),
        ],
      ),
      body: const Center(
        child: Text("test"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('need help'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}