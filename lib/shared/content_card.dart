import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  String title = "";
  String imageURL = "";
  String infoText = "";
  void Function() onPressed;
  ContentCard({
    Key? key,
    required this.title,
    required this.imageURL,
    required this.infoText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Uri.tryParse(imageURL)!.hasAbsolutePath
                ? Container(
                    constraints:
                        const BoxConstraints(minWidth: 100, maxWidth: 200),
                    child: Image.network(imageURL),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.headline5),
                  Text(infoText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
