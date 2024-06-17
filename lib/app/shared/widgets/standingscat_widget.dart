import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/theme.dart';
import 'package:nb_utils/nb_utils.dart';

class StandingsCat extends StatefulWidget {
  const StandingsCat({super.key});

  @override
  State<StandingsCat> createState() => _StandingsCatState();
}

class _StandingsCatState extends State<StandingsCat> {
  final List<String> categories = [
    "Group A",
    "Group B",
    "Group C",
    "Group D",
    "Group E",
    "Group F",
    "Group G",
    "Group H",
    "",
  ];

  final List<String> standings = [
    "assets/images/groupA.png",
    "assets/images/groupB.png",
    "assets/images/groupC.png",
    "assets/images/groupD.png",
    "assets/images/groupE.png",
    "assets/images/groupF.png",
    "assets/images/groupG.png",
    "assets/images/groupH.png",
    "assets/images/loading.webp",
  ];

  int categoriesIndex = 0;
  int standingsIndex = 0;

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            shrinkWrap: true,
            padding: const EdgeInsets.only(right: 8, bottom: 8),
            itemBuilder: (context, index) {
              categories[index];
              return InkWell(
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 8.0, bottom: 8.0),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: categoriesIndex == index
                        ? themeData.primaryColor
                        : Colors.grey.withOpacity(0.1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    categories[index],
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 12,
                      color: categoriesIndex == index
                          ? Colors.white
                          : Colors.black.withOpacity(0.6),
                    ),
                  ),
                ).onTap(
                  () {
                    categoriesIndex = index;
                    standingsIndex = 8;
                    setState(() {});
                    Future.delayed(const Duration(seconds: 1), (() {
                      standingsIndex = categoriesIndex;
                      setState(() {});
                    }));
                  },
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Image.asset(standings[standingsIndex]),
        ),
      ],
    );
  }
}
