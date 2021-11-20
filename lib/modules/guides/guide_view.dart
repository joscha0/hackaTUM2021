import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uplant/models/guide_model.dart';

import 'guide_controller.dart';

class GuideView extends GetView<GuideController> {
  GuideModel guide;
  GuideView({Key? key, required this.guide}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: true,
          title: Text(guide.title),
        ),
        body: Column(
          children: [
            Text(guide.infoText),
            Text(
              guide.steps[0].title,
            )
          ],
        ));
  }
}
