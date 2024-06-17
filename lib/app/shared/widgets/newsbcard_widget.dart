import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/common/theme/theme.dart';

class NewsBCard extends StatelessWidget {
  NewsBCard({super.key});

  final List<dynamic> newsTitle = [
    "'We're here to enjoy it', says PSG boss Luis Enrique",
    "'Aku ingin menguasai dunia', kata Darrel",
    "'We're here to enjoy it', says PSG boss Luis Enrique",
  ];

  final List<dynamic> newsDate = [
    "Full Time",
    "Full Time",
    "Full Time",
  ];

  final List<dynamic> newsPhoto = [
    "assets/images/picture1.png",
    "assets/images/profile.jpg",
    "assets/images/picture1.png"
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
            height: 112,
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
                    style: boldText12.copyWith(color: themeData.highlightColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "UEFA Champions League",
                        style:
                            boldText10.copyWith(color: themeData.primaryColor),
                      ),
                      Text(
                        "30/04/2024 - 23:35",
                        style: mediumText8.copyWith(
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
