import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  String title = "";
  ContentCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(28),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}
