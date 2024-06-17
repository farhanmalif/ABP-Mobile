import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/modules/newsDetail/views/news_detail_view.dart';

class NewsACard extends StatelessWidget {
  NewsACard({super.key});

  final List<dynamic> newsTitle = [
    "Full round of 16 Champions League Draw",
    "Full round of 16 Champions League Draw",
    "Full round of 16 Champions League Draw",
  ];

  final List<dynamic> newsPhoto = [
    "assets/images/picture1.png",
    "assets/images/profile.jpg",
    "assets/images/picture1.png"
  ];
  final List<dynamic> newsPosted = [
    "1 days ago",
    "2 days ago",
    "3 days ago",
  ];

  final List<dynamic> newsViews = [
    " 123 k",
    " 10 k",
    " 9 k",
  ];

  final List<dynamic> newsComments = [
    " 3",
    " 20",
    " 5",
  ];

  final List<dynamic> newsLikes = [
    " 50",
    " 120",
    " 12",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(newsTitle.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NewsDetailView();
                  },
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20.0, bottom: 16.0),
              width: 275,
              height: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 205,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(newsPhoto[index]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Title
                          Text(
                            newsTitle[index],
                            style: semiBoldText16,
                          ),
                          // Information
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // days posted
                              Text(
                                newsPosted[index],
                                style: mediumText10.copyWith(
                                  color: const Color(0xFF8E8E8E),
                                ),
                              ),

                              // views
                              Row(
                                children: [
                                  SvgPicture.asset("assets/svg/views.svg"),
                                  Text(
                                    newsViews[index],
                                    style: mediumText10.copyWith(
                                      color: const Color(0xFF8E8E8E),
                                    ),
                                  ),
                                ],
                              ),

                              // comment
                              Row(
                                children: [
                                  SvgPicture.asset("assets/svg/comments.svg"),
                                  Text(
                                    newsComments[index],
                                    style: mediumText10.copyWith(
                                      color: const Color(0xFF8E8E8E),
                                    ),
                                  ),
                                ],
                              ),

                              // likes
                              Row(
                                children: [
                                  SvgPicture.asset("assets/svg/likes.svg"),
                                  Text(
                                    newsLikes[index],
                                    style: mediumText10.copyWith(
                                      color: const Color(0xFF8E8E8E),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
