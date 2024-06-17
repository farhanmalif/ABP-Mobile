import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/shared/widgets/appbar_widget.dart';
import 'package:maenbal/app/shared/widgets/feed_player/feed_player.dart';

import '../controllers/highlights_controller.dart';

class HighlightsView extends GetView<HighlightsController> {
  const HighlightsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScheme.surface,
      appBar: CustomAppBar(
        title: 'Highlights',
        isLeading: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            fit: BoxFit.fitWidth,
            'assets/images/ucl.webp',
          ),
        ),
        action: [
          SvgPicture.asset(
            'assets/images/notif.svg',
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: FeedPlayer(),
      ),
    );
  }
}
