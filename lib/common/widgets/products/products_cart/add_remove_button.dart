import 'package:test_commerce/common/widgets/icons/circular_icons.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProductQuantityAddRemoveButton extends StatelessWidget {
  const AppProductQuantityAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppCircularIcon(
          icon: Iconsax.minus,
          widht: 32,
          height: 32,
          size: AppSizes.md,
          color: AppHelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.black,
          backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.darkerGrey : AppColors.light,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems,),
        Text('10',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: AppSizes.spaceBtwItems,),
        const AppCircularIcon(
          icon: Iconsax.add,
          widht: 32,
          height: 32,
          size: AppSizes.md,
          color: AppColors.white,
          backgroundColor: AppColors.primary,
        ),
      ],
    );
  }
}