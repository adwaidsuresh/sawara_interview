import 'package:flutter/material.dart';
import 'package:sawara_interview/core/theme%20/extensions/colors_extension.dart';
import 'package:sawara_interview/core/theme%20/extensions/shadow_extension.dart';
import 'package:sawara_interview/core/theme%20/extensions/space_extension.dart';
import 'package:sawara_interview/core/theme%20/extensions/typography_extension.dart';

class AppTheme {
  final BuildContext context;

  const AppTheme.of(this.context);

  AppColors get colors {
    return Theme.of(context).extension<AppColors>()!;
  }

  AppSpaceExtension get spaces {
    return Theme.of(context).extension<AppSpaceExtension>()!;
  }

  AppTypographyExtension get typography {
    return Theme.of(context).extension<AppTypographyExtension>()!;
  }

  AppBoxShadow get boxShadow {
    return Theme.of(context).extension<AppBoxShadow>()!;
  }
}
