import 'package:flutter/material.dart';
import 'package:news_wave/constants/sizes.dart';

class CardNewsBig extends StatelessWidget {
  const CardNewsBig({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 315,
      height: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        image: const DecorationImage(
          image: AssetImage('assets/images/vespa.jpg'),
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
                const Text(
                  'CNN Indonesia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: TextSize.regular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                gapH4,
                const Text(
                  'Vespa Revolution: Navigating The Scooter Scene',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: TextSize.header,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      '8 min read',
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
                    const Text(
                      '2 hr ago',
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
