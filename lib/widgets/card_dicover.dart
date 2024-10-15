import 'package:flutter/material.dart';
import 'package:news_wave/constants/color_values.dart';
import 'package:news_wave/constants/sizes.dart';

class CardDiscover extends StatelessWidget {
  // final String title;
  // final String author;
  // final DateTime createdAt;
  // final DateTime publishedYear;
  // final String publisher;
  // final String? imagePath;
  // final String? pdfPath;
  const CardDiscover({
    super.key,
    // required this.title,
    // required this.author,
    // required this.createdAt,
    // required this.publishedYear,
    // required this.publisher,
    // this.imagePath,
    // this.pdfPath,
  });

  @override
  Widget build(BuildContext context) {
    
    // final String formattedDate = DateFormat('dd MMM yyyy').format(createdAt);
    // final String formattedYear = DateFormat('yyyy').format(publishedYear);

    return InkWell(
      // onTap: () {
      //   if (pdfPath != null && pdfPath!.isNotEmpty) {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => DetailBookPage(
      //           title: title,
      //           author: author,
      //           createdAt: createdAt,
      //           publishedYear: publishedYear,
      //           imagePath: imagePath ?? '',
      //           pdfPath: pdfPath ?? '',
      //           publisher: publisher,
      //         ),
      //       ),
      //     );
      //   } else {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       const SnackBar(content: Text('PDF not available')),
      //     );
      //   }
      // },
      child: Container(
        width: 152,
        height: 207,
        // margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 125,
                height: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                  //   image: imagePath != null && imagePath!.isNotEmpty 
                  //     ? FileImage(File(imagePath!))
                  //     : const AssetImage('assets/images/sample_profile.jpeg') as ImageProvider,
                  image: AssetImage('assets/images/vespa.jpg'),
                  fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            gapH8,
            Text(
              // author,
              'Ava Louise',
              style: const TextStyle(
                color: ColorsValues.darkGrey,
                fontSize: TextSize.regular,
                fontWeight: FontWeight.w500,
              ),
            ),
            gapH4,
            Text(
              // title,
              'Classic Earrings Reign Supreme',
              style: const TextStyle(
                color: ColorsValues.mainBlack,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
            gapH4,
            Row(
              children: [
                Text(
                  // formattedDate,
                  '8 min read',
                  style: const TextStyle(
                      color: ColorsValues.darkGrey,
                      fontSize: 10,),
                ),
                gapW4,
                const Icon(
                  Icons.circle,
                  size: 4,
                  color: Colors.black,
                ),
                gapW4,
                Text(
                  // formattedYear,
                  '1 hr ago',
                  style: const TextStyle(
                      color: ColorsValues.darkGrey,
                      fontSize: 10,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}