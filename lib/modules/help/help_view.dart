import 'package:flutter/material.dart';
import 'package:uplant/shared/bottom_nav_bar.dart';
import 'package:uplant/shared/text_styles.dart';
import 'package:get/get.dart';

import 'help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'help',
          style: heading,
        ),
      ),
      body: SafeArea(child: Text('HelpController')),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 2,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('need help'),
        icon: const Icon(Icons.help),
      ),
    );
  }
}
