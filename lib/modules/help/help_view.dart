import 'package:flutter/material.dart';
import 'package:gardening/shared/bottom_nav_bar.dart';
import 'package:get/get.dart';

import 'help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HelpPage')),
      body: SafeArea(child: Text('HelpController')),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 2,
      ),
    );
  }
}
