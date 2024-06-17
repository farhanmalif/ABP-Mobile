import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maenbal/app/common/styles/colors.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/common/theme/theme.dart';
import 'package:maenbal/app/shared/widgets/rating_widget.dart';
import 'package:maenbal/app/shared/widgets/unorderedlist_widget.dart';
import 'package:nb_utils/nb_utils.dart';

import '../controllers/news_detail_controller.dart';

// ignore: must_be_immutable
class NewsDetailView extends GetView<NewsDetailController> {
  const NewsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "News Detail",
          style: semiBoldText18.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/picture1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 110),
                  padding: const EdgeInsets.only(
                      top: 90, left: 16, right: 16, bottom: 16),
                  decoration: boxDecorationWithShadow(
                    backgroundColor: kColorScheme.surface,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: regularText12,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'UEFA Champions League',
                              style: boldText12.copyWith(
                                color: themeData.primaryColor,
                              ),
                            ),
                            const TextSpan(
                                text:
                                    ' - Pep  Guardiola`s City, who are looking to retain the title they won in  Istanbul last June, will be expected to comfortably get the better of  the Danish side, who qualified from their group at the expense of  Manchester United after beating the Red Devils 4-3 at home.'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Inter,  the Serie A leaders, were one of the teams to avoid after finishing  second in their group and their meeting with Atletico will see Diego  Simeone, the coach of the Spanish club, come up against a team with whom  he spent two years as a player in the late 1990s.",
                        style: regularText12,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "French  champions Paris Saint-Germain, who have gone out in the last 16 in each  of the last two seasons and in five of the last seven campaigns, were  also braced for a tough draw having come second in their group behind  Borussia Dortmund.",
                        style: regularText12,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "They  will therefore be relieved at being handed a tie against Real Sociedad,  who topped their section above Inter but are appearing in the Champions  League last 16 for the first time since 2003/04, when they were knocked  out by Lyon.",
                        style: regularText12,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Barcelona's  meeting with Italian champions Napoli is another standout tie, while  Arsenal will be expected to get the better of Porto.",
                        style: regularText12,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Bayern  Munich will be strong favourites against Lazio and record 14-time  European champions Real Madrid will also be heavily fancied against RB  Leipzig.",
                        style: regularText12,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "The  other tie sees Dortmund come up against PSV Eindhoven, who are coached  by former Borussia manager Peter Bosz and are through to the last 16 for  the first time in eight years.",
                        style: regularText12,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "The first legs will take place in mid-February with the return matches in March.",
                        style: regularText12,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "This season's Champions League final will be staged at Wembley in London on June 1.",
                        style: regularText12,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Full round of 16 Champions League Draw",
                        style: semiBoldText12,
                      ),
                      const UnorderedList(
                        [
                          "FC Porto vs Arsenal",
                          "Napoli vs Barcelona",
                          "Paris St-Germain vs Real Sociedad",
                          "Inter Milan vs Atletico Madrid",
                          "PSV Eindhoven vs Borussia Dortmund",
                          "Lazio vs Bayern Munich",
                          "FC Copenhagen vs Manchester City",
                          "RB Leipzig vs Real Madrid",
                        ],
                      ),
                      const SizedBox(height: 50),
                      const CustomRatings(),
                      const SizedBox(height: 70),
                      Center(
                        child: Text(
                          "@2024 MadeByGroupD",
                          style: regularText14.copyWith(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8, top: 65),
                      height: 110,
                      width: 370,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9E9E9).withOpacity(0.75),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Full round of 16 Champions League Draw",
                          style: semiBoldText16,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 25,
                      child: Text(
                        "18/12/2023 - 19:02",
                        style: mediumText10.copyWith(
                          color: const Color(0xFF8E8E8E),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ).paddingTop(60),
          ),
        ],
      ),
    );
  }
}
