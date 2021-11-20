import 'package:flutter/material.dart';
import 'package:gardening/shared/bottom_nav_bar.dart';
import 'package:gardening/shared/content_card.dart';
import 'package:get/get.dart';
import 'package:gardening/modules/profile/profile_view.dart';
import 'package:gardening/shared/text_styles.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'gardening',
          style: heading,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_rounded),
            onPressed: () {
              Get.to(
                () => const ProfileView(),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: searchController,
              decoration: const InputDecoration(
                labelText: 'Search ...',
                border: OutlineInputBorder(),
              ),
            ),
            ContentCard(
              title: "test",
            ),
            ContentCard(
              title: "test",
            ),
            ContentCard(
              title: "test",
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}
