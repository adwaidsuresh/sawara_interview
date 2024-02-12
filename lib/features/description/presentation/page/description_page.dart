// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/description/description_contants.dart';

class Description extends ConsumerWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text(ref.watch(descriptionConstantsProvider).txtDescription),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400,
              height: 373,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 400,
                    height: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('asset/resort.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.file_download_outlined,
                        color: Colors.black54,
                      ),
                      const Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.black54,
                      ),
                      const Icon(
                        Icons.favorite_outline,
                        color: Colors.black54,
                      ),
                      const Icon(Icons.crop_free_outlined),
                      const Icon(Icons.star_border),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.blue[400],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(ref.watch(descriptionConstantsProvider).txtcountnumber),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.blue[400],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(ref.watch(descriptionConstantsProvider).txtcountnumber),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0x309E9E9E)),
                  child: Center(
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      glow: true,
                      updateOnDrag: true,
                      itemCount: 5,
                      itemSize: 15,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_outlined,
                        color: Colors.blue,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(ref.watch(descriptionConstantsProvider).txtactorname),
            const SizedBox(
              height: 8,
            ),
            Text(ref.watch(descriptionConstantsProvider).txtindina),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(Icons.watch_later_outlined),
                Text(ref.watch(descriptionConstantsProvider).txttotalAverage)
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(ref.watch(descriptionConstantsProvider).txtabout),
            Text(ref.watch(descriptionConstantsProvider).txtdescr)
          ],
        ),
      ),
    );
  }
}
