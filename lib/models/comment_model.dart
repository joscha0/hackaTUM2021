import 'package:cloud_firestore/cloud_firestore.dart';

class CommentModel {
  String? documentId;
  late Timestamp createdOn;
  late String ownerName;
  late String comment;

  CommentModel({
    required this.createdOn,
    required this.ownerName,
    required this.comment,
  });

  CommentModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    ownerName = documentSnapshot["ownerName"];
    createdOn = documentSnapshot["createdOn"];
    comment = documentSnapshot["comment"];
  }
}
