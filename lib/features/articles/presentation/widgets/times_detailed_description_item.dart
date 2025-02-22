import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';
import '../cubit/article_cubit.dart';

class TimesDetailsDescriptionItem extends StatelessWidget {
  const TimesDetailsDescriptionItem({
    super.key,
    required this.index,
    required this.articlesCubit,
  });

  final ArticlesCubit articlesCubit;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      articlesCubit.getMediaCaption(articlesCubit,index),
      style: AppTextStyles.font14BlackRegular,
    );
  }
}
