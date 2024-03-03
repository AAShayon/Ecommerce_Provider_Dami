import 'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/common/widgets/images/circular_image.dart';
import 'package:test_commerce/common/widgets/texts/brand_title_text_icon.dart';
import 'package:test_commerce/common/widgets/texts/product_title_text.dart';
import 'package:test_commerce/common/widgets/texts/products_price_text.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/enums.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppProductMetaData extends StatelessWidget {
  const AppProductMetaData({super.key});
  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppRoundedContainer(
              radius: AppSizes.sm,
              backGroundColor: AppColors.secondary.withOpacity(.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),

            const SizedBox(width: AppSizes.spaceBtwItems,),
            Text('\$150',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: AppSizes.spaceBtwItems,),
           const AppProductPrice(price: '175' ,isLarge: true,)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems /1.5,),
        const AppProductTitleText(title: 'Baseball Bat'),
        const SizedBox(height: AppSizes.spaceBtwItems /1.5,),

        Row(
          children: [
            const AppProductTitleText(title: 'Status'),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems /1.5,),
         Row(
          children: [
             AppCircularImage(image: AppImages.cosmeticsIcon,width: 32,height: 32,overlayColor: darkMode ? AppColors.white : AppColors.black,),
             const AppBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSizes: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
