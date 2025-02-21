import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class TimesImageAndDescriptionItem extends StatelessWidget {
  const TimesImageAndDescriptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Teaching',
              style: AppTextStyles.font12GreyRegular,
            ),
            Spacer(),
            Text(
              '2002-2-2',
              style: AppTextStyles.font12GreyRegular,
            ),
          ],
        ),
        verticalSpace(8),
        Container(
          width: double.infinity,
          height: 250.h,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://img.freepik.com/free-photo/side-view-man-having-online-video-call-with-coworkers_23-2148908840.jpg?t=st=1740153246~exp=1740156846~hmac=9df54dfa7e1a72464bf744a538902c7ddd5a3b2148698ce17acb10dbc3dfac89&w=1380',
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            'Source: New york times',
            style: AppTextStyles.font12GreyRegular,
          ),
        ),
      ],
    );
  }
}

