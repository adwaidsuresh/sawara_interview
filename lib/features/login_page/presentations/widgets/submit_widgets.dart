import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/login/login_constants.dart';
import 'package:sawara_interview/features/home_page/presentations/page/home_page.dart';

class SubmitWidgets extends ConsumerWidget {
  const SubmitWidgets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          )),
      child: Container(
        width: 350,
        height: 55,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 3),
            borderRadius: BorderRadius.circular(10),
            color: Color(0xA89E9E9E)),
        child: Center(
          child: Text(ref.watch(loginConstantsProvider).txtSubmit),
        ),
      ),
    );
  }
}
