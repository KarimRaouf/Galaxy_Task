import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:galaxy_app/features/articles/presentation/cubit/article_cubit.dart';
import 'package:galaxy_app/shared/presentation/widgets/cached_image_widget.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/styles.dart';

class ArticleListViewItem extends StatelessWidget {
  const ArticleListViewItem({
    super.key,
    required this.index,
    required this.onTap,
    required this.articlesCubit,
  });

  final int index;
  final VoidCallback onTap;
  final ArticlesCubit articlesCubit;

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
                CachedImageWidget(
                  radius: 100.r,
                  imageUrl: articlesCubit.getMediaUrl(index) ?? "",
                  height: 75.h,
                  width: 75.w,
                ),
                horizontalSpace(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // 80% of screen width

                      child: Text(
                        articlesCubit.allArticles[index].title ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    verticalSpace(6),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // 80% of screen width

                      child: Text(
                        articlesCubit.allArticles[index].byline ?? '',
                        style: AppTextStyles.font14GreyRegular,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
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
                  articlesCubit.allArticles[index].publishedDate ?? '',
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
