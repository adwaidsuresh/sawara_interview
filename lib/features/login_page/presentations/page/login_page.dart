import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/login/login_constants.dart';
import 'package:sawara_interview/features/login_page/presentations/widgets/logos_widgets.dart';
import 'package:sawara_interview/features/login_page/presentations/widgets/submit_widgets.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final typography = AppTheme.of(context).typography;
    // final colors = AppTheme.of(context).colors;
    // final spaces = AppTheme.of(context).spaces;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              ref.watch(loginConstantsProvider).txtpromilio,
              // style: AppTheme.of(context).typography.appbarTitle,
            )),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text(ref.watch(loginConstantsProvider).txtwelcome),
              ),
              // CustomTextField(hintText: ''),
              Text(ref.watch(loginConstantsProvider).txtsignin),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(ref.watch(loginConstantsProvider).txtremember),
                  Text(ref.watch(loginConstantsProvider).txtpasswrod),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const SubmitWidgets(),
              const SizedBox(
                height: 50,
              ),
              // Divider(),
              const Row(
                children: [
                  Divider(),
                  Spacer(),
                  Text('or'),
                  Spacer(),
                  Divider(),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Logos(),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(ref.watch(loginConstantsProvider).txtBusiness),
                  Text(ref.watch(loginConstantsProvider).txtaccount),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(ref.watch(loginConstantsProvider).txtloginhera),
                  Text(ref.watch(loginConstantsProvider).txtsignup),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text(ref.watch(loginConstantsProvider).txtagree),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text(ref.watch(loginConstantsProvider).txtpromilio),
                  Text(ref.watch(loginConstantsProvider).txtpolice),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
