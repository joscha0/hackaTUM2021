import 'package:flutter/material.dart';
import 'package:gardening/modules/projects/projects_controller.dart';
import 'package:gardening/shared/bottom_nav_bar.dart';
import 'package:get/get.dart';

class ProjectsView extends GetView<ProjectsController> {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProjectsPage')),
      body: SafeArea(child: Text('ProjectsController')),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 1,
      ),
    );
  }
}
