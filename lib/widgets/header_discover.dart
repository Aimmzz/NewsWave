import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/constants/sizes.dart';
import 'package:news_wave/widgets/text_title.dart';

class HeaderDiscover extends StatelessWidget {
  const HeaderDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH12,
          const TextTitle(title: 'Discover'),
          const Text(
            "Let's find new things.",
            style: TextStyle(
                color: ColorsValues.mainBlack,
                fontSize: TextSize.regular,
                fontWeight: FontWeight.w600),
          ),
          gapH20,
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: ColorsValues.mainBlack,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: ColorsValues.mainBlack,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: ColorsValues.mainBlack,
                        width: 2,
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: ColorsValues.mainBlack,
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: ColorsValues.hitGrey,
                      // fontSize: TextSize.regular,
                      fontWeight: FontWeight.w600
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  // onChanged: (value) {
                  //   Provider.of<SearchProvider>(context, listen: false).setSearchQuery(value);
                  // },
                ),
              ),
              gapW8,
              InkWell(
                onTap: (){},
                child: Image.asset(
                  'assets/images/filter_3687524.png',
                  height: 36,
                  width: 36,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}