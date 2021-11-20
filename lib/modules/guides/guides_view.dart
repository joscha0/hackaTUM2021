import 'package:flutter/material.dart';
import 'package:uplant/shared/bottom_nav_bar.dart';
import 'package:uplant/shared/content_card.dart';
import 'package:get/get.dart';
import 'guide_view.dart';
import 'guides_controller.dart';

class GuidesView extends GetView<GuidesController> {
  GuidesView({Key? key}) : super(key: key);

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'guides',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: GetX<GuidesController>(
              init: Get.put<GuidesController>(GuidesController()),
              builder: (GuidesController guidesController) {
                return Column(
                  children: [
                    TextFormField(
                      controller: searchController,
                      decoration: const InputDecoration(
                        labelText: 'Search ...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: guidesController.guides.length,
                        itemBuilder: (BuildContext context, int index) {
                          final guide = guidesController.guides[index];
                          return ContentCard(
                            onPressed: () {
                              Get.to(GuideView(guide: guide));
                            },
                            title: guide.title,
                            infoText: guide.infoText,
                            imageURL: guide.imageURL,
                          );
                        })
                  ],
                );
              })),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 0,
      ),
    );
  }
}
