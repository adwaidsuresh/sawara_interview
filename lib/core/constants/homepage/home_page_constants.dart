import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_constants.g.dart';

class HomepageConstants {
  final txthomeappbar = 'Individual Meetup';
  final txtpopular = 'popular  Meetups in India';
  final txttrending = 'Trending  Popular People';
  final txtAuthor = 'Author ';
  final txtcount = '1,028 Meetups';
  final txtseemore = 'See more';
  final txttoptrend = 'Top Trending Meetups';
}

@riverpod
HomepageConstants homepageConstants(HomepageConstantsRef ref) {
  return HomepageConstants();
}
