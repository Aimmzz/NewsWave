import 'package:flutter/material.dart';
import 'package:news_wave/constants/sizes.dart';
import 'package:news_wave/model/news.dart';

class CardNewsBig extends StatelessWidget {
  final News news;

  const CardNewsBig({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 315,
      height: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(news.image),
          fit: BoxFit.cover,
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            // color: Colors.black.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.source,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: TextSize.regular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                gapH4,
                Text(
                  news.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: TextSize.header,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      // '8 min read',
                      news.readTime,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: TextSize.regular,
                      ),
                    ),
                    gapW4,
                    const Icon(
                      Icons.circle,
                      size: 4,
                      color: Colors.white,
                    ),
                    gapW4,
                    Text(
                      // '2 hr ago',
                      news.time,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: TextSize.regular,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){},
                      child: const Icon(
                        Icons.bookmark_border_outlined,
                          color: Colors.white,
                      ),
                    ),
                    gapW16,
                    InkWell(
                      onTap: (){},
                      child: const Icon(
                        Icons.more_horiz,
                          color: Colors.white,
                      ),
                    ),
                    gapW4,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
