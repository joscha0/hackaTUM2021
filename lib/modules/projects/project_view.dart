import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplant/models/project_model.dart';

import 'project_conroller.dart';

class ProjectView extends GetView<ProjectController> {
  ProjectModel project;
  ProjectView({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Text(project.title),
        ),
        body: Column(
          children: [
            Text(project.infoText),
            Text(
                // project.comments[0].comment,
                "")
          ],
        ));
  }
}
