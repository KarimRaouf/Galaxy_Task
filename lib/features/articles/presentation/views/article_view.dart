import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:galaxy_app/core/app_strings/app_strings.dart';
import 'package:galaxy_app/core/helper/spacing.dart';
import 'package:galaxy_app/core/theming/app_colors.dart';
import 'package:galaxy_app/core/theming/styles.dart';

import '../widgets/article_listview.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainTeal,
        title: Text(
          AppStrings.nyTimesMostPopular,
          style: AppTextStyles.font24Black700Weight,
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          children: [
            verticalSpace(16),
            ArticleListView(),
          ],
        ),
      ),
    );
  }
}
