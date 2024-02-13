// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/homepage/home_page_constants.dart';
import 'package:sawara_interview/core/theme/theme_helper.dart';
import 'package:sawara_interview/core/widgets/bottom_navigation_bar_widget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sawara_interview/core/constants/description/description_contants.dart';

class Description extends ConsumerWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final rating = ref.watch(ratingProvider).state;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text(
          ref.watch(descriptionConstantsProvider).txtDescription,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
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
                  SizedBox(
                    height: 320,
                    child: PageView(children: [
                      Stack(
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
                          const Positioned(
                            left: 0,
                            right: 0,
                            bottom: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white70,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white60,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white54,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white38,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 400,
                        height: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('asset/resorts2.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('asset/resorts3.jpeg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ]),
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
                        onPressed: () async {
                          {
                            await Share.share('share');
                          }
                        },
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
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Center(
                    child: RatingBar.builder(
                      initialRating: 3.2,
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
                      unratedColor: Colors.white,
                      onRatingUpdate: (rating) {
                        // ref.read(ratingProvider).state = rating;
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "3.2",
                  style: AppTheme.of(context).typography.pBlockQuote.copyWith(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              ref.watch(descriptionConstantsProvider).txtactorname,
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(ref.watch(descriptionConstantsProvider).txtindina),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Icon(
                  Icons.watch_later_outlined,
                  color: Colors.black54,
                ),
                Text(ref.watch(descriptionConstantsProvider).txtduration,
                    style: TextStyle(color: Colors.black54))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Icon(
                  Icons.folder_open_rounded,
                  color: Colors.black54,
                ),
                Text(ref.watch(descriptionConstantsProvider).txttotalAverage,
                    style: TextStyle(color: Colors.black54))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              ref.watch(descriptionConstantsProvider).txtabout,
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
            SizedBox(
              width: 420,
              child: Text(
                ref.watch(descriptionConstantsProvider).txtdescr,
                style: AppTheme.of(context).typography.pDefault,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                    child: Text(
                  ref.watch(homepageConstantsProvider).txtseemore,
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                )),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomMavigationbar(),
    );
  }
}
