import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/common/theme/theme.dart';

class CustomRatings extends StatefulWidget {
  const CustomRatings({super.key});

  @override
  State<CustomRatings> createState() => _CustomRatingsState();
}

class _CustomRatingsState extends State<CustomRatings> {
  bool isThumbUpSelected = false;
  bool isThumbDownSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Like the news?",
          style: semiBoldText16,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isThumbUpSelected = !isThumbUpSelected;
                  isThumbDownSelected = false;
                });
              },
              child: Icon(
                isThumbUpSelected ? Icons.thumb_up : Icons.thumb_up_outlined,
                size: 50,
                color: isThumbUpSelected ? themeData.canvasColor : Colors.grey,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isThumbDownSelected = !isThumbDownSelected;
                  isThumbUpSelected = false;
                });
              },
              child: Icon(
                isThumbDownSelected
                    ? Icons.thumb_down
                    : Icons.thumb_down_outlined,
                size: 50,
                color:
                    isThumbDownSelected ? themeData.canvasColor : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
