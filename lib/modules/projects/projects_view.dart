import 'package:flutter/material.dart';
import 'package:gardening/modules/projects/projects_controller.dart';
import 'package:gardening/shared/bottom_nav_bar.dart';
import 'package:gardening/shared/text_styles.dart';
import 'package:get/get.dart';

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
      body: SafeArea(child: Text('ProjectsController')),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 1,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('add project'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
