import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/homepage/home_page_constants.dart';
import 'package:sawara_interview/features/home_page/presentations/widgets/top_trending_widgets.dart';
import 'package:sawara_interview/features/home_page/presentations/widgets/trending_popular_people.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text(ref.watch(homepageConstantsProvider).txthomeappbar),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(radius: 5),
                  CircleAvatar(radius: 5),
                  CircleAvatar(radius: 5),
                ],
              ),
              const SizedBox(height: 40),
              Text(ref.watch(homepageConstantsProvider).txttrending),
              const SizedBox(height: 40),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrendingPeople(),
                    SizedBox(width: 20),
                    TrendingPeople(),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Text(ref.watch(homepageConstantsProvider).txttoptrend),
              const SizedBox(height: 40),
              const TopTrending(),
            ],
          ),
        ),
      ),
    );
  }
}
