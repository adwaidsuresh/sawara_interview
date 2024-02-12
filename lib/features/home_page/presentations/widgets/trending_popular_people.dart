import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_stack/image_stack.dart';
import 'package:sawara_interview/core/constants/homepage/home_page_constants.dart';
// import 'package:sawara_solutions/core/constants/homepage/home_page_constants.dart';

class TrendingPeople extends ConsumerWidget {
  const TrendingPeople({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> images = [
      "asset/man1.png",
      "asset/man2.png",
      "asset/man3.png",
      "asset/man4.png",
      // 'assets/man5.png'
    ];

    return Container(
      width: 320,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                const CircleAvatar(),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ref.watch(homepageConstantsProvider).txtAuthor),
                    Text(ref.watch(homepageConstantsProvider).txtcount)
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: .5,
            endIndent: 15,
            indent: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ImageStack(
              imageList: images,
              totalCount: images.length,
              imageRadius: 50,
              imageCount: 5,
              imageBorderWidth: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: SizedBox(
              height: 35,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(ref.watch(homepageConstantsProvider).txtseemore)),
            ),
          )
        ],
      ),
    );
  }
}
