import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/constants/sizes.dart';

class CardNews extends StatelessWidget {
  const CardNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            height: 96,
            width: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/sample_profile.jpeg'),
                fit: BoxFit.cover
              ),
            ),
          ),
          gapW8,
          //expanded digunakan supaya column punya batasan yg jelas
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/sample_profile2.jpeg',
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                    gapW8,
                    const Text(
                      'Alexa Virgie',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: TextSize.regular,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                      child: const Icon(
                        Icons.bookmark_border_rounded,
                        color: ColorsValues.mainBlack,
                        size: 24.0,
                      ),
                    ),
                    gapW8,
                    InkWell(
                      onTap: (){},
                      child: Image.asset(
                        'assets/images/menu_dots.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Fusion of Retro Glamour and Futuristic Trends',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: TextSize.subTitle,
                    fontWeight: FontWeight.w700,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
                gapH8,
                Row(
                  children: [
                    const Text(
                      '8 min read',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: TextSize.regular,
                      ),
                    ),
                    gapW4,
                    const Icon(
                      Icons.circle,
                      size: 4,
                      color: Colors.black,
                    ),
                    gapW4,
                    const Text(
                      '2 hr ago',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: TextSize.regular,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
