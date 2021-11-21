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
          title: Text(
            guide.title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(15.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
              child: Text(
                guide.infoText,
                textAlign: TextAlign.center,
              ),
            ),
            for (var step in guide.steps)
              Column(
                children: [
                  Text(
                    step.title,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    step.text,
                  ),
                  Uri.tryParse(step.imageURL)!.hasAbsolutePath
                      ? Image.network(
                          step.imageURL,
                          height: 200,
                        )
                      : Container(),
                ],
              )
          ],
        ));
  }
}
