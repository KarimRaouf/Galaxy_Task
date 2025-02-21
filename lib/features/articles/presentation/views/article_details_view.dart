import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:galaxy_app/core/app_strings/app_strings.dart';
import 'package:galaxy_app/core/helper/spacing.dart';
import 'package:galaxy_app/core/theming/app_colors.dart';
import 'package:galaxy_app/core/theming/styles.dart';

import '../widgets/article_listview.dart';
import '../widgets/times_detailed_description_item.dart';
import '../widgets/times_image_and_description_item.dart';
import '../widgets/times_title_item.dart';

class ArticleDetailsView extends StatelessWidget {
  const ArticleDetailsView({super.key});

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
              TimesTitleItem(),
              TimesImageAndDescriptionItem(),
              TimesDetailsDescriptionItem(),
            ],
          ),
        ),
      ),
    );
  }
}
