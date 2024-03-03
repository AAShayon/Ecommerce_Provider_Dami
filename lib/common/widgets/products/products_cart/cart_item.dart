import'package:test_commerce/common/widgets/images/rounded_images.dart';
import 'package:test_commerce/common/widgets/texts/brand_title_text_icon.dart';
import 'package:test_commerce/common/widgets/texts/product_title_text.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
class AppCartItem extends StatelessWidget {
  const AppCartItem({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        AppRoundImage(
          imageUrl: AppImages.products1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(AppSizes.sm),
          backgroundColor:dark ? AppColors.darkerGrey : AppColors.light ,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBrandTitleWithVerifiedIcon(title: 'Acer'),
              const Flexible(child: AppProductTitleText(title: 'No 1 Laptop ',maxLines: 1,)),
              Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'UK',style: Theme.of(context).textTheme.bodyLarge),
                    ]
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}