import 'package:flutter/material.dart';
import 'package:uplant/shared/bottom_nav_bar.dart';
import 'package:get/get.dart';

import 'help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'help',
          style: Theme.of(context).textTheme.headline4,
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
