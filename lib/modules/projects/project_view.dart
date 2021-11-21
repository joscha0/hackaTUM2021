import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplant/models/comment_model.dart';
import 'package:uplant/models/project_model.dart';
import 'package:uplant/services/firestore_service.dart';

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
        title: Text(
          project.title,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("created by: " + project.ownerName),
        ),
        Text(
          DateTime.fromMillisecondsSinceEpoch(
                  project.createdOn.millisecondsSinceEpoch)
              .toString(),
        ),
        Uri.tryParse(project.imageURL)!.hasAbsolutePath
            ? Image.network(
                project.imageURL,
                height: 200,
              )
            : Container(),
        Text(project.infoText),
        for (var comment in project.comments)
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  DateTime.fromMillisecondsSinceEpoch(
                          comment.createdOn.millisecondsSinceEpoch)
                      .toIso8601String(),
                ),
                Text(
                  "comment from: " + comment.ownerName,
                ),
                Text(comment.comment),
              ],
            ),
          ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final nameController = TextEditingController();
          final textController = TextEditingController();

          final _formKey = GlobalKey<FormState>();
          Get.bottomSheet(Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Wrap(
                children: [
                  const Text('Comment'),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      labelText: 'Enter a Comment',
                      border: OutlineInputBorder(),
                    ),
                    controller: textController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a comment!';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text('Your name'),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your name',
                      border: OutlineInputBorder(),
                    ),
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name!';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      FirebaseService.addCommentProject(
                          project,
                          CommentModel(
                            createdOn: Timestamp.now(),
                            ownerName: nameController.text,
                            comment: textController.text,
                          ));
                      Get.back();
                    },
                    child: const Text("Add comment"),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ));
        },
        label: const Text('add comment'),
        icon: const Icon(Icons.comment),
      ),
    );
  }
}
