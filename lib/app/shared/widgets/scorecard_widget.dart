import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
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
              "60 : 22",
              style: mediumText10.copyWith(color: Colors.white),
            ),

            const SizedBox(height: 12),
            // Score
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Team A
                Image.asset(
                  "assets/images/barcelona.png",
                  height: 40,
                ),
                // Score
                Text(
                  "2 - 2",
                  style: semiBoldText24.copyWith(color: Colors.white),
                ),

                // Team B
                Image.asset(
                  "assets/images/realmadrid.png",
                  height: 40,
                ),
              ],
            ),

            const SizedBox(height: 18),
            // Scorer
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Team A scorer
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "De Jong 66’",
                      style: mediumText8.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Depay 79’",
                      style: mediumText8.copyWith(color: Colors.white),
                    ),
                  ],
                ),

                // Team B scorer]
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Alvarez 21’",
                      style: mediumText8.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Palmer 70’",
                      style: mediumText8.copyWith(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
