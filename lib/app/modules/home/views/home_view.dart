import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/shared/widgets/appbar_widget.dart';
import 'package:maenbal/app/shared/widgets/matchcard_widget.dart';
import 'package:maenbal/app/shared/widgets/newsacard_widget.dart';
import 'package:maenbal/app/shared/widgets/newsbcard_widget.dart';
import 'package:maenbal/app/shared/widgets/scoreview_widget.dart';
import 'package:maenbal/app/shared/widgets/standingscat_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorScheme.surface,
        appBar: CustomAppBar(
          title: 'LiveScore',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ScoreView(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next Matches',
                      style: semiBoldText16,
                    ),
                    InkWell(
                      child: Text(
                        'See All',
                        style: mediumText12.copyWith(
                          color: const Color(0xFF54B9FC),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MatchCard(
                  imageAClub: "assets/images/city.png",
                  nameAClub: "MNC",
                  imageBClub: "assets/images/manchester.png",
                  nameBClub: "MNU",
                  location: "Riyadh",
                  time: "7.00 PM",
                  isLinear: true),
              const SizedBox(height: 16),
              MatchCard(
                  imageAClub: "assets/images/acm.png",
                  nameAClub: "ACM",
                  imageBClub: "assets/images/munchen.png",
                  nameBClub: "BAY",
                  location: "Milan",
                  time: "5.00 PM",
                  isLinear: false),
              const SizedBox(height: 16),
              MatchCard(
                  imageAClub: "assets/images/realmadrid.png",
                  nameAClub: "RMA",
                  imageBClub: "assets/images/barcelona.png",
                  nameBClub: "BAR",
                  location: "Madrid",
                  time: "5.00 PM",
                  isLinear: false),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 8.0),
                child: Text(
                  "Standings",
                  style: semiBoldText16,
                ),
              ),
              const StandingsCat(),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20, top: 16.0, bottom: 8.0),
                child: Text(
                  "Latest News",
                  style: semiBoldText16,
                ),
              ),
              NewsBCard(),
            ],
          ),
        ));
  }
}
