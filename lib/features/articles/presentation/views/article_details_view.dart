import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_strings/app_strings.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/styles.dart';
import '../cubit/article_cubit.dart';
import '../widgets/times_detailed_description_item.dart';
import '../widgets/times_image_and_description_item.dart';
import '../widgets/times_title_item.dart';

class ArticleDetailsView extends StatelessWidget {
  ArticleDetailsView({super.key, this.articlesCubit, this.index});

  ArticlesCubit? articlesCubit;
  int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainTeal,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          AppStrings.nyTimesMostPopular,
          style: AppTextStyles.font24Black700Weight,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            spacing: 16.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(2),
              TimesTitleItem(articlesCubit: articlesCubit, index: index ?? 0),
              TimesImageAndDescriptionItem(
                articlesCubit: articlesCubit ?? ArticlesCubit.get(context),
                index: index??0,
              ),
              TimesDetailsDescriptionItem(
                articlesCubit: articlesCubit ?? ArticlesCubit.get(context),
                index: index ?? 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
