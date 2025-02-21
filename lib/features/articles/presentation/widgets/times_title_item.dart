import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class TimesTitleItem extends StatelessWidget {
  const TimesTitleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Teaching is pandemic: This is not sustainable',
          style: AppTextStyles.font24BlueBold,
        ),
        verticalSpace(8),
        Text(
          'Teaching is pandemic: This is not sustainable Teaching is pandemic: This is not sustainable Teaching is pandemic: This is not sustainable',
          style: AppTextStyles.font14GreyRegular,
        ),
      ],
    );
  }
}
