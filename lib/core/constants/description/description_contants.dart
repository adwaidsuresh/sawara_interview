import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'description_contants.g.dart';

class DescriptionConstants {
  final txtDescription = 'Description';
  final txtactorname = 'Actor Name';
  final txtcountnumber = '1034';
  final txtindina = 'Indian Actress';
  final txtduration = 'Duration 20 mins';
  final txttotalAverage = 'Total Average fees \$9,999';
  final txtabout = 'About';
  final txtdescr =
      'From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of of these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp';
  final txtsee = 'seemore';
}

@riverpod
DescriptionConstants descriptionConstants(DescriptionConstantsRef ref) {
  return DescriptionConstants();
}
