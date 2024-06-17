import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/shared/widgets/appbar_widget.dart';
import 'package:maenbal/app/shared/widgets/scoreview_widget.dart';

import '../controllers/matches_controller.dart';

class MatchesView extends GetView<MatchesController> {
  const MatchesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorScheme.surface,
        appBar: CustomAppBar(
          title: 'Matches',
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
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Group phase",
                      style: semiBoldText12.copyWith(
                        color: const Color(0xff3498DB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.circle,
                      size: 6,
                      color: Color(0xff3498DB),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Match 1 of 6",
                      style: semiBoldText12.copyWith(
                        color: const Color(0xff3498DB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.chevron_right_outlined,
                      size: 20,
                      color: Color(0xff000000),
                    ),
                  ],
                ),
                ScoreView(),
                //
                Row(
                  children: [
                    Text(
                      "Round 16",
                      style: semiBoldText12.copyWith(
                        color: const Color(0xff3498DB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.circle,
                      size: 6,
                      color: Color(0xff3498DB),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Leg 1 of 2",
                      style: semiBoldText12.copyWith(
                        color: const Color(0xff3498DB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.chevron_right_outlined,
                      size: 20,
                      color: Color(0xff000000),
                    ),
                  ],
                ),
                ScoreView(),
                //
                Row(
                  children: [
                    Text(
                      "Quarterfinals",
                      style: semiBoldText12.copyWith(
                        color: const Color(0xff3498DB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.circle,
                      size: 6,
                      color: Color(0xff3498DB),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Leg 1 of 2",
                      style: semiBoldText12.copyWith(
                        color: const Color(0xff3498DB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.chevron_right_outlined,
                      size: 20,
                      color: Color(0xff000000),
                    ),
                  ],
                ),
                ScoreView(),
                //
                Row(
                  children: [
                    Text(
                      "Semifinals",
                      style: semiBoldText12.copyWith(
                        color: const Color(0xff3498DB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.circle,
                      size: 6,
                      color: Color(0xff3498DB),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Leg 1 of 2",
                      style: semiBoldText12.copyWith(
                        color: const Color(0xff3498DB),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.chevron_right_outlined,
                      size: 20,
                      color: Color(0xff000000),
                    ),
                  ],
                ),
                ScoreView(),
              ],
            ),
          ),
        ));
  }
}
