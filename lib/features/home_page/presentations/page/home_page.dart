import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/homepage/home_page_constants.dart';
import 'package:sawara_interview/core/theme/theme_helper.dart';
import 'package:sawara_interview/core/widgets/bottom_navigation_bar_widget.dart';
import 'package:sawara_interview/features/home_page/presentations/widgets/top_trending_widgets.dart';
import 'package:sawara_interview/features/home_page/presentations/widgets/trending_popular_people.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});
  final controller = PageController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const Icon(Icons.arrow_back_ios_new),
          title: Text(ref.watch(homepageConstantsProvider).txthomeappbar),
          surfaceTintColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(CupertinoIcons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          AppTheme.of(context).spaces.space_150,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: AppTheme.of(context).spaces.space_200),
                      hintText: "Search",
                      suffixIcon: const Icon(CupertinoIcons.mic)),
                ),
                SizedBox(height: AppTheme.of(context).spaces.space_300),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 200,
                    width: 380,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'asset/meeting2.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            const Positioned(
                              left: 15,
                              right: 0,
                              bottom: 20,
                              child: Text(
                                'Popular Meetings \n in India',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'asset/meeting1.jpeg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'asset/meet3.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.black45,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.black38,
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  ref.watch(homepageConstantsProvider).txttrending,
                  style: AppTheme.of(context)
                      .typography
                      .h600
                      .copyWith(fontSize: 18),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++) ...[
                        const TrendingPeople(),
                        const SizedBox(width: 20),
                      ]
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  ref.watch(homepageConstantsProvider).txttoptrend,
                  style: AppTheme.of(context)
                      .typography
                      .h600
                      .copyWith(fontSize: 18),
                ),
                const SizedBox(height: 5),
                const TopTrending(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomMavigationbar(),
      ),
    );
  }
}
