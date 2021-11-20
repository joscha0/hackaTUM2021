import 'package:cloud_firestore/cloud_firestore.dart';

import 'comment_model.dart';

class ProjectModel {
  String? documentId;
  late String title;
  late Timestamp createdOn;
  late String ownerName;
  late String infoText;
  late String imageURL;
  late List<CommentModel> comments;

  ProjectModel({
    required this.title,
    required this.createdOn,
    required ownerName,
    required infoText,
    required imageURL,
    required comments,
  });

  ProjectModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    title = documentSnapshot["title"];
    createdOn = documentSnapshot["createdOn"];
    ownerName = documentSnapshot["ownerName"];
    infoText = documentSnapshot["infoText"];
    imageURL = documentSnapshot["imageURL"];
    comments = documentSnapshot["comments"];
  }
}
