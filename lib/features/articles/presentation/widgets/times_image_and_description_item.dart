import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:galaxy_app/shared/presentation/widgets/cached_image_widget.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../cubit/article_cubit.dart';

class TimesImageAndDescriptionItem extends StatelessWidget {
  final ArticlesCubit articlesCubit;
  final int index;

  const TimesImageAndDescriptionItem({
    super.key,
    required this.index,
    required this.articlesCubit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: Text(
                "${articlesCubit.allArticles[index].byline}" ??
                    '',
                style: AppTextStyles.font12GreyRegular,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            const Spacer(),
            Text(
              articlesCubit.allArticles[index].publishedDate ?? '',
              style: AppTextStyles.font12GreyRegular,
            ),
          ],
        ),
        verticalSpace(8),
        CachedImageWidget(
          radius: 16.r,
          imageUrl: articlesCubit.getMediaUrl(
                index,
                isSmallImage: false,
              ) ??
              "",
        ),
        Center(
          child: Text(
            articlesCubit.allArticles[index].source ?? '',
            style: AppTextStyles.font12GreyRegular,
          ),
        ),
      ],
    );
  }
}
