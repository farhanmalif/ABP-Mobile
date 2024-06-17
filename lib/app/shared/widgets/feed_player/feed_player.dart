import 'package:flutter/material.dart';
import 'package:maenbal/app/common/theme/font.dart';
import 'package:maenbal/app/data/mock_data.dart';
import 'package:visibility_detector/visibility_detector.dart';
import './multi_manager/flick_multi_manager.dart';
import './multi_manager/flick_multi_player.dart';

class FeedPlayer extends StatefulWidget {
  const FeedPlayer({super.key});

  @override
  _FeedPlayerState createState() => _FeedPlayerState();
}

class _FeedPlayerState extends State<FeedPlayer> {
  List items = mockData['items'];

  late FlickMultiManager flickMultiManager;

  @override
  void initState() {
    super.initState();
    flickMultiManager = FlickMultiManager();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ObjectKey(flickMultiManager),
      onVisibilityChanged: (visibility) {
        if (visibility.visibleFraction == 0 && mounted) {
          flickMultiManager.pause();
        }
      },
      child: ListView.separated(
        separatorBuilder: (context, int) => Container(
          height: 0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      height: 40,
                      'assets/images/ucl.webp',
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        items[index]['title'],
                        style: boldText16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                    height: 400,
                    margin: const EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: FlickMultiPlayer(
                        url: items[index]['trailer_url'],
                        flickMultiManager: flickMultiManager,
                        image: items[index]['image'],
                      ),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
