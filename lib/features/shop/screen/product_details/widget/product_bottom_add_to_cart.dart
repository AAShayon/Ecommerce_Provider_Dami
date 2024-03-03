import'package:test_commerce/common/widgets/icons/circular_icons.dart';
import 'package:test_commerce/features/shop/screen/product_reviews/product_reviews.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBottomAddToCart extends StatelessWidget {
  const AppBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? AppColors.darkerGrey : AppColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSizes.cardRadiusLg),
              topRight: Radius.circular(AppSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Row(
            children: [
            const  AppCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: AppColors.darkGrey,
                widht: 40,
                height: 40,
                color: AppColors.white,
              ),
              const SizedBox(width: AppSizes.spaceBtwItems,),
              Text('2',style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: AppSizes.spaceBtwItems,),
              const AppCircularIcon(
                icon: Iconsax.add,
                backgroundColor: AppColors.darkGrey,
                widht: 40,
                height: 40,
                color: AppColors.white,
              ),
            ],
          ),
          ElevatedButton(onPressed:(){AppHelperFunctions.navigateToScreen(context,  const ProductReviewsScreen());},style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(AppSizes.md),
            backgroundColor: AppColors.black,
            side: const BorderSide(color: AppColors.black),
          ), child:  const Text('Add to Cart'),)
        ],
      ),
    );
  }
}
