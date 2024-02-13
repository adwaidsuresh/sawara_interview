import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/login/login_constants.dart';
import 'package:sawara_interview/core/theme/theme_helper.dart';
import 'package:sawara_interview/features/home_page/presentations/page/home_page.dart';
import 'package:sawara_interview/features/login_page/presentations/provider/login_providers.dart';
import 'package:sawara_interview/features/login_page/presentations/widgets/logos_widgets.dart';
import 'package:sawara_interview/features/login_page/presentations/widgets/submit_widgets.dart';
import '../../../../core/widgets/custom_textfiled_widgets.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController(text: "test45@yopmail.com");
  final password = TextEditingController(text: "Test@123");

  void onSubmit(BuildContext context, WidgetRef ref) {
    final encryptedPass = sha256.convert(utf8.encode(password.text)).toString();
    log("Encrypted Password = $encryptedPass");
    ref.read(emailProvider.notifier).state = email.text;
    ref.read(passwordProvider.notifier).state = encryptedPass;

    ref.read(loadingProvider.notifier).state = true;
    final data = ref.read(loginProvider.notifier).login();

    data.then((value) {
      ref.read(loadingProvider.notifier).state = false;
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
        (route) => false,
      );
    }).onError((error, stackTrace) {
      ref.read(loadingProvider.notifier).state = false;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          content: Text("$error"),
          backgroundColor: Colors.red,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    final spaces = AppTheme.of(context).spaces;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            ref.watch(loginConstantsProvider).txtpromilio,
            style: typography.appbarTitle,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      ref.watch(loginConstantsProvider).txtwelcome,
                      style: typography.h600,
                    ),
                  ),
                  SizedBox(
                    height: spaces.space_400,
                  ),
                  CustomTextField(
                    controller: email,
                    headText: "Please Sign in to Continue",
                    hintText: 'Enter Email or Mob No.',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter email to login";
                      } else if (!value.contains("@") || !value.contains('.')) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (formKey.currentState!.validate()) {
                        ref.read(enableBtnProvider.notifier).state = true;
                      } else {
                        ref.read(enableBtnProvider.notifier).state = false;
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: colors.btnPrimary,
                      ),
                      child: Text(
                        ref.watch(loginConstantsProvider).txtsignin,
                        style: typography.h500.copyWith(color: Colors.blue),
                      ),
                    ),
                  ),

                  CustomTextField(
                    controller: password,
                    headText: "Password",
                    hintText: 'Enter Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter password to login";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (formKey.currentState!.validate()) {
                        ref.read(enableBtnProvider.notifier).state = true;
                      } else {
                        ref.read(enableBtnProvider.notifier).state = false;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.check_box_outline_blank_rounded,
                          color: Colors.grey[600],
                        ),
                        label: Text(
                          ref.watch(loginConstantsProvider).txtremember,
                          style: typography.h500Normal.copyWith(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: colors.btnPrimary,
                        ),
                        child: Text(
                          ref.watch(loginConstantsProvider).txtpasswrod,
                          style: typography.h500.copyWith(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  SubmitButton(
                    onTap: ref.watch(enableBtnProvider) ||
                            ref.watch(loadingProvider)
                        ? () => onSubmit(context, ref)
                        : null,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  // Divider(),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          endIndent: 8,
                          indent: 8,
                          color: Colors.grey[300],
                        ),
                      ),
                      const Text('or'),
                      Expanded(
                        child: Divider(
                          endIndent: 8,
                          indent: 8,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Logos(),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ref.watch(loginConstantsProvider).txtBusiness,
                        // style:
                        style: typography.h500.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        ref.watch(loginConstantsProvider).txtaccount,
                        style: typography.h500.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ref.watch(loginConstantsProvider).txtloginhera,
                        style: typography.h500.copyWith(
                          color: const Color.fromARGB(255, 10, 135, 237),
                        ),
                      ),
                      Text(ref.watch(loginConstantsProvider).txtsignup,
                          style: typography.h500.copyWith(
                            color: const Color.fromARGB(255, 10, 135, 237),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      ref.watch(loginConstantsProvider).txtagree,
                      style: typography.uiSemibold
                          .copyWith(color: Colors.grey[600]),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 70,
                      ),
                      Text(
                        ref.watch(loginConstantsProvider).txtpromilio,
                        style: typography.uiSemibold
                            .copyWith(color: Colors.grey[600]),
                      ),
                      Text(
                        ref.watch(loginConstantsProvider).txtpolice,
                        style: typography.h500,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
