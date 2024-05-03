import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/theme/font.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: regularText12.copyWith(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
