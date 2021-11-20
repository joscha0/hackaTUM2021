import 'package:flutter/material.dart';
import 'package:uplant/shared/bottom_nav_bar.dart';
import 'package:uplant/shared/content_card.dart';
import 'package:get/get.dart';
import 'package:uplant/modules/profile/profile_view.dart';
import 'package:uplant/shared/text_styles.dart';
import 'guides_controller.dart';

class GuidesView extends GetView<GuidesController> {
  GuidesView({Key? key}) : super(key: key);

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<GuidesController>(() => GuidesController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'uplant',
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
