import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/homepage/home_page_constants.dart';
import 'package:sawara_interview/core/theme/theme_helper.dart';
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
      'asset/man2.png'
    ];

    return Container(
      width: 320,
      height: 210,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black45),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[600],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.energy_savings_leaf_outlined,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
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
          const Divider(
            color: Colors.black,
            thickness: .5,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  for (int i = 0; i < images.length; i++)
                    Positioned(
                      left: i * 30,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(images[i]),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: AppTheme.of(context).colors.btnPrimary,
                foregroundColor: AppTheme.of(context).colors.txtInverse,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppTheme.of(context).spaces.space_150,
                ),
                minimumSize: const Size(0, 34),
              ),
              child: Text(
                ref.watch(homepageConstantsProvider).txtseemore,
              ),
            ),
          )
        ],
      ),
    );
  }
}
