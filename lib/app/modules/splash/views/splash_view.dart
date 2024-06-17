import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/common/theme/theme.dart';
import 'package:maenbal/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.LOGIN);
    }));
    return Scaffold(
      backgroundColor: themeData.canvasColor,
      body: Center(
        child: SvgPicture.asset("assets/svg/MAENBAL.svg"),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "@2024 MadeByGroupD",
              style: semiBoldText14.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
