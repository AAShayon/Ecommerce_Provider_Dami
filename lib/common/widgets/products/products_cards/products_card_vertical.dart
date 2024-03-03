import'package:test_commerce/common/styles/shadows/shadows.dart';
import 'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/common/widgets/icons/circular_icons.dart';
import 'package:test_commerce/common/widgets/images/rounded_images.dart';
import 'package:test_commerce/common/widgets/texts/brand_title_text_icon.dart';
import 'package:test_commerce/common/widgets/texts/product_title_text.dart';
import 'package:test_commerce/common/widgets/texts/products_price_text.dart';
import 'package:test_commerce/features/shop/screen/product_details/product_detail.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AppShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: dark ? AppColors.darkerGrey : AppColors.white,
        ),
        child: Column(
          ///thumbnail ,wishlist Button ,Discount tag

          children: [
            AppRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backGroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  ///--thumbnail Image
                  const AppRoundImage(imageUrl: AppImages.products1, applyImageRadius: true,),

                  ///---Sale tag
                  Positioned(
                    top: 12,
                    child: AppRoundedContainer(
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
                  ),
                  ///-----Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: AppCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
           ///---Product Name Details
           const Padding(
              padding:EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   AppProductTitleText(
                    title: 'acer Laptop',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                  ///---Brand Name
                  AppBrandTitleWithVerifiedIcon(title: 'acer',),
                ],
              ),
            ),
            const Spacer(),
            ///---Price and Add
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Padding(
                  padding: EdgeInsets.only(left: AppSizes.sm),
                  child: AppProductPrice(price: '35.0',isLarge: true),
                ),
                ///----Adding
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.cardRadiusMd),
                        bottomRight:
                        Radius.circular(AppSizes.productImageRadius),
                      )),
                  child: const SizedBox(
                      width: AppSizes.iconLg * 1.2,
                      height: AppSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: AppColors.white,
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


