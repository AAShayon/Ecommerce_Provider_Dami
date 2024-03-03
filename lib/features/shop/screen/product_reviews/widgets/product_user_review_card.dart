import'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class AppUserReviewCard extends StatelessWidget {
  const AppUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.userProfileImage1),
                ),
                const SizedBox(
                  width: AppSizes.spaceBtwItems,
                ),
                Text(
                  'User Name',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Row(
          children: [
            const AppRatingBarIndicator(rating: 4),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '01 Feb,2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'The User interface of the app is quite intuituve .I was able to navigate and make purchases seamlessly .Great job !.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primary),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        AppRoundedContainer(
          backGroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Padding(
              padding: const EdgeInsets.all(AppSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Store Shop',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '02 Feb ,2023',
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    'The User interface of the app is quite intuituve .I was able to navigate and make purchases seamlessly .Great job !.',
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'show less',
                    trimCollapsedText: 'show more',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary),
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections,)
                ],
              )
          ),
        ),
      ],
    );
  }
}
