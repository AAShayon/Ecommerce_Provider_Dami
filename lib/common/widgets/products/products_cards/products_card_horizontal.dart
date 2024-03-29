import'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/common/widgets/icons/circular_icons.dart';
import 'package:test_commerce/common/widgets/images/rounded_images.dart';
import 'package:test_commerce/common/widgets/texts/brand_title_text_icon.dart';
import 'package:test_commerce/common/widgets/texts/product_title_text.dart';
import 'package:test_commerce/common/widgets/texts/products_price_text.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    // boxShadow: [AppShadowStyle.horizontalProductShadow],
    borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
    color: dark ? AppColors.darkerGrey : AppColors.softGrey,
    ),
 child: Row(
   children: [
     AppRoundedContainer(
       height: 120,
       padding:  const EdgeInsets.all(AppSizes.sm),
       backGroundColor: dark ? AppColors.dark : AppColors.light,
       child:  Stack(
         children: [
           const SizedBox(
               height: 120,width: 120,
               child: AppRoundImage(imageUrl: AppImages.products1,applyImageRadius: true,)),
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
      SizedBox(
       width: 172,
       child: Padding(
         padding: const EdgeInsets.only(top: AppSizes.sm,left: AppSizes.sm),
         child: Column(
           children: [
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 AppProductTitleText(title: 'Acer Laptop 16GB 560GB',maxLines: 2,smallSize: true,),
                 SizedBox(height: AppSizes.spaceBtwItems/2,),
                 AppBrandTitleWithVerifiedIcon(title: 'Acer')
               ],
             ),
             const Spacer(),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               const Flexible(child: AppProductPrice(price: '256.0')),

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

             ],)
           ],
         ),
       ),
     )
   ],
 ),

    );
  }
}
