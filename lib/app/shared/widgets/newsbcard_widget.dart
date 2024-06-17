import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/common/theme/theme.dart';

class NewsBCard extends StatelessWidget {
  NewsBCard({super.key});

  final List<dynamic> newsTitle = [
    "Lionel Messi: Man City best to watch but Real Madrid winners",
    "What Mbappé's transfer to Real Madrid means for everyone",
    "Ronaldo, Rivaldo: Vinícius Jr. already deserves Ballon d'Or",
  ];

  final List<dynamic> newsDate = [
    "Jun 7, 2024 - 08:59",
    "Jun 3, 2024 - 01:57",
    "Jun 7, 2024 - 02:38",
  ];

  final List<dynamic> newsPhoto = [
    "assets/images/newsb1.jpeg",
    "assets/images/newsb2.jpeg",
    "assets/images/newsb3.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: List.generate(newsTitle.length, (index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(newsPhoto[index]),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsTitle[index],
                    style: boldText14.copyWith(color: themeData.highlightColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "UEFA Champions League",
                        style:
                            boldText14.copyWith(color: themeData.primaryColor),
                      ),
                      Text(
                        newsDate[index],
                        style: mediumText12.copyWith(
                            color: themeData.highlightColor),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
