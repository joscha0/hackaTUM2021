import 'package:cloud_firestore/cloud_firestore.dart';
import 'step_model.dart';

class GuideModel {
  String? documentId;
  late String title;
  late String infoText;
  late String imageURL;
  late List<StepModel> steps;

  GuideModel({
    required this.title,
    required infoText,
    required imageURL,
    required steps,
  });

  GuideModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    title = documentSnapshot["title"];
    infoText = documentSnapshot["infoText"];
    imageURL = documentSnapshot["imageURL"];
    steps = documentSnapshot["steps"];
  }
}
