import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';

class ScoreView extends StatelessWidget {
  ScoreView({super.key});

  final List<dynamic> TeamA = [
    "assets/images/dortmund.png",
    "assets/images/realmadrid.png",
    "assets/images/acm.png",
    "assets/images/psg.png",
    "assets/images/manchester.png",
    "assets/images/copenhagen.png",
  ];

  final List<dynamic> TeamB = [
    "assets/images/psg.png",
    "assets/images/sporting.png",
    "assets/images/alnassr.png",
    "assets/images/barcelona.png",
    "assets/images/realmadrid.png",
    "assets/images/munchen.png",
  ];

  final List<dynamic> Score = [
    "3-2",
    "2-1",
    "2-2",
    "0-3",
    "1-3",
    "0-3",
  ];

  final List<dynamic> ScorerA = [
    "Hummels 20’",
    "Bellingham 15’",
    "Leão 9’",
    "",
    "Antony 90’",
    "",
  ];

  final List<dynamic> ScorerAA = [
    "Reus 66’",
    "Rodrygo 88’",
    "Giroud 15’",
    "",
    "",
    "",
  ];

  final List<dynamic> ScorerAAA = [
    "Reus 89’",
    "",
    "",
    "",
    "",
    "",
  ];

  final List<dynamic> ScorerB = [
    "Mbappe 80’",
    "Edwards 21’",
    "C.Ronaldo 88’",
    "Lewandowski 23’",
    "V.Júnior 65’",
    "Kane 21’",
  ];

  final List<dynamic> ScorerBB = [
    "Mbappe 85’",
    "",
    "C.Ronaldo 90’",
    "Lewandowski 25’",
    "V.Júnior 71’",
    "Müller 80’",
  ];

  final List<dynamic> ScorerBBB = [
    "",
    "",
    "",
    "Lewandowski 27’",
    "V.Júnior 80’",
    "Müller 90’",
  ];

  final List<dynamic> Time = [
    "Full Time",
    "Full Time",
    "Full Time",
    "Full Time",
    "Full Time",
    "Full Time",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              children: List.generate(Score.length, (index) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(0, 14, 10, 14),
                  padding: const EdgeInsets.all(12.0),
                  width: 222.5,
                  height: 140,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xff1F3198),
                        Color(0xff182268),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      // Time
                      Text(
                        Time[index],
                        style: mediumText10.copyWith(color: Colors.white),
                      ),

                      const SizedBox(height: 12),
                      // Score
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Team A
                          Image.asset(
                            TeamA[index],
                            height: 40,
                          ),
                          // Score
                          Text(
                            Score[index],
                            style: semiBoldText24.copyWith(color: Colors.white),
                          ),

                          // Team B
                          Image.asset(
                            TeamB[index],
                            height: 40,
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),
                      // Scorer
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Team A scorer
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ScorerA[index],
                                style:
                                    mediumText8.copyWith(color: Colors.white),
                              ),
                              Text(
                                ScorerAA[index],
                                style:
                                    mediumText8.copyWith(color: Colors.white),
                              ),
                              Text(
                                ScorerAAA[index],
                                style:
                                    mediumText8.copyWith(color: Colors.white),
                              ),
                            ],
                          ),

                          // Team B scorer]
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                ScorerB[index],
                                style:
                                    mediumText8.copyWith(color: Colors.white),
                              ),
                              Text(
                                ScorerBB[index],
                                style:
                                    mediumText8.copyWith(color: Colors.white),
                              ),
                              Text(
                                ScorerBBB[index],
                                style:
                                    mediumText8.copyWith(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
