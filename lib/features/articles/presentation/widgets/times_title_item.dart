import 'package:flutter/material.dart';
import 'package:galaxy_app/features/articles/presentation/cubit/article_cubit.dart';
import 'package:galaxy_app/features/articles/presentation/widgets/times_detailed_description_item.dart';
import 'package:galaxy_app/features/articles/presentation/widgets/times_image_and_description_item.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';

class TimesTitleItem extends StatelessWidget {
   TimesTitleItem({super.key, required this.articlesCubit, required this.index});

   ArticlesCubit? articlesCubit;
   final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          articlesCubit?.allArticles[index].title??'',
          style: AppTextStyles.font24BlueBold,
        ),
        verticalSpace(8),
        Text(
          articlesCubit?.allArticles[index].abstract??'',
          style: AppTextStyles.font14GreyRegular,
        ),

      ],
    );
  }
}
