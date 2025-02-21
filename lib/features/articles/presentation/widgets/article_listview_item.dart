import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/styles.dart';

class ArticleListViewItem extends StatelessWidget {
  const ArticleListViewItem(
      {super.key, required this.index, required this.onTap});

  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://img.freepik.com/free-photo/man-home-office_329181-14504.jpg?t=st=1740145341~exp=1740148941~hmac=2da066f2deef0a544b67982bbd818775b34eb00d58a835fdc5ee6ed20df8a419&w=1380',
                    width: 75.w,
                    height: 75.h,
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('The children'),
                    verticalSpace(6),
                    Text(
                      'By Karim Abdelraouf',
                      style: AppTextStyles.font14GreyRegular,
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  weight: 3,
                  color: AppColors.gray,
                ),
              ],
            ),
            verticalSpace(4),
            Row(
              children: [
                Spacer(),
                Icon(
                  Icons.date_range,
                  size: 12,
                  color: AppColors.gray,
                ),
                horizontalSpace(2),
                Text(
                  '5-1-2002',
                  style: AppTextStyles.font14GreyRegular,
                  overflow: TextOverflow.ellipsis,
                ),
                horizontalSpace(60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
