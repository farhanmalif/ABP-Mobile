import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/shared/widgets/appbar_widget.dart';
import 'package:maenbal/app/shared/widgets/newsacard_widget.dart';
import 'package:maenbal/app/shared/widgets/newsbcard_widget.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScheme.surface,
      appBar: CustomAppBar(
        title: 'Latest News',
        isLeading: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            fit: BoxFit.fitWidth,
            'assets/images/uefa.png',
          ),
        ),
        action: [
          SvgPicture.asset(
            'assets/images/notif.svg',
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            NewsACard(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              child: Text(
                "News",
                style: semiBoldText16,
              ),
            ),
            NewsBCard(),
          ],
        ),
      ),
    );
  }
}
