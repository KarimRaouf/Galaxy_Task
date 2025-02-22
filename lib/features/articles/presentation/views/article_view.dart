import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:galaxy_app/core/app_strings/app_strings.dart';
import 'package:galaxy_app/core/helper/spacing.dart';
import 'package:galaxy_app/core/theming/app_colors.dart';
import 'package:galaxy_app/core/theming/styles.dart';
import 'package:galaxy_app/features/articles/presentation/cubit/article_cubit.dart';
import 'package:galaxy_app/features/articles/presentation/cubit/article_states.dart';
import 'package:galaxy_app/shared/presentation/widgets/app_loader.dart';

import '../../../../core/utils/injections.dart';
import '../../domain/usecases/articles_usecase.dart';
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
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(16),
            BlocProvider(
              create: (context) =>
                  ArticlesCubit(articlesUseCase: sl<ArticlesUseCase>())
                    ..getArticles(period: 1),
              child: BlocBuilder<ArticlesCubit, ArticlesStates>(
                builder: (context, state) {
                  ArticlesCubit articleCubit = ArticlesCubit.get(context);
                  return state is ArticleGetLoadingState
                      ? Expanded(child: AppLoader())
                      : state is ArticleGetFailureState
                          ? Expanded(
                              child: Center(
                                child: Text(
                                  'Try Again Later!',
                                  style: AppTextStyles.font32BlueBold,
                                ),
                              ),
                            )
                          : ArticleListView(
                              articlesCubit: articleCubit,
                            );
                },
              ),
            ),
            verticalSpace(16),
          ],
        ),
      ),
    );
  }
}
