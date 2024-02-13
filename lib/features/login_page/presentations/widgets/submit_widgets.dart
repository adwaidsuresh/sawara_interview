import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sawara_interview/core/constants/login/login_constants.dart';
import 'package:sawara_interview/core/theme/theme_helper.dart';
import 'package:sawara_interview/features/login_page/presentations/provider/login_providers.dart';

class SubmitButton extends ConsumerWidget {
  final VoidCallback? onTap;
  const SubmitButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.of(context).colors.btnPrimary,
        disabledBackgroundColor:
            AppTheme.of(context).colors.btnPrimary.withOpacity(0.5),
        disabledForegroundColor: AppTheme.of(context).colors.txtInverse,
        foregroundColor: AppTheme.of(context).colors.txtInverse,
        minimumSize: Size(
          double.infinity,
          AppTheme.of(context).spaces.space_600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppTheme.of(context).spaces.space_150,
          ),
          side: const BorderSide(
            color: Colors.blue,
            width: 3,
          ),
        ),
      ),
      child: ref.watch(loadingProvider)
          ? SizedBox(
              height: AppTheme.of(context).spaces.space_250,
              width: AppTheme.of(context).spaces.space_250,
              child: const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            )
          : Text(
              ref.watch(loginConstantsProvider).txtSubmit,
            ),
    );
  }
}
