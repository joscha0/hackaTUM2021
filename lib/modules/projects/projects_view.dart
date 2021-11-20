import 'package:flutter/material.dart';
import 'package:uplant/modules/projects/project_view.dart';
import 'package:uplant/modules/projects/projects_controller.dart';
import 'package:uplant/shared/bottom_nav_bar.dart';
import 'package:uplant/shared/content_card.dart';
import 'package:uplant/shared/text_styles.dart';
import 'package:get/get.dart';

import 'add_project_view.dart';

class ProjectsView extends GetView<ProjectsController> {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'projects',
          style: heading,
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: GetX<ProjectsController>(
              init: Get.put<ProjectsController>(ProjectsController()),
              builder: (ProjectsController projectsController) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: projectsController.projects.length,
                    itemBuilder: (BuildContext context, int index) {
                      final project = projectsController.projects[index];
                      return ContentCard(
                        onPressed: () {
                          Get.to(ProjectView(project: project));
                        },
                        title: project.title,
                        infoText: project.infoText,
                        imageURL: project.imageURL,
                      );
                    });
              })),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 1,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(AddProjectView());
        },
        label: const Text('add project'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
