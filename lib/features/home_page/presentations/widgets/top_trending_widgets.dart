import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/theme/theme_helper.dart';
import 'package:sawara_interview/features/description/presentation/page/description_page.dart';
// import 'package:sawara_solutions/features/description/presentation/page/description_page.dart';

class TopTrending extends ConsumerWidget {
  const TopTrending({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Description(),
              ),
            ),
            child: Container(
              width: 180,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('asset/redcarpet.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.all(AppTheme.of(context).spaces.space_50),
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(8)),
                    color: AppTheme.of(context).colors.txtInverse,
                  ),
                  child: Text(
                    "${index < 10 ? "0" : ""}${index + 1}",
                    style: AppTheme.of(context).typography.h900,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: AppTheme.of(context).spaces.space_150,
        ),
      ),
    );
  }
}
