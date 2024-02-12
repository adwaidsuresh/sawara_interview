import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/features/description/presentation/page/description_page.dart';
// import 'package:sawara_solutions/features/description/presentation/page/description_page.dart';

class TopTrending extends ConsumerWidget {
  const TopTrending({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 20,
      ),
      itemCount: 8,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Description(),
                ),
              ),
              child: Container(
                width: 180,
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('asset/redcarpet.jpg'),
                        fit: BoxFit.fill)),
              ),
            )
          ],
        );
      },
    );
  }
}
