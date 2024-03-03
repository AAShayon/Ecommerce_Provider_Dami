import'package:test_commerce/common/widgets/chip/choice_chips.dart';
import 'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/common/widgets/texts/product_title_text.dart';
import 'package:test_commerce/common/widgets/texts/products_price_text.dart';
import 'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import'package:flutter/material.dart';

class AppProductAttributes extends StatelessWidget {
  const AppProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        AppRoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backGroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const AppSectionHeading(title: 'Variation',showActionButton: false,),
                  const SizedBox(width: AppSizes.spaceBtwItems,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const AppProductTitleText(title: 'Price : ',smallSize: true),
                          const SizedBox(width: AppSizes.spaceBtwItems,),
                          Text('\$25',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          const SizedBox(width: AppSizes.spaceBtwItems,),
                          const AppProductPrice(price: '45')
                        ],
                      ),
                      Row(
                        children: [
                          const AppProductTitleText(title: 'Stock : ',smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const AppProductTitleText(
                title: 'This is the description of products max line 4 ',
              smallSize: true,maxLines: 4,

              )
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title:'Colors',showActionButton: false,),
            const SizedBox(height: AppSizes.spaceBtwItems /2,),
           Wrap(
             spacing: 2,
             children: [
               AppChoiceChip(text: 'Green',selected: true,onSelected: (value){},),
               AppChoiceChip(text: 'Blue',selected: false,onSelected: (value){},),
               AppChoiceChip(text: 'Yellow',selected: false,onSelected: (value){},),
             ],
           )

          ],
        ),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title:'Sizes',showActionButton: false,),
            const SizedBox(height: AppSizes.spaceBtwItems /2,),
            Wrap(
              children: [
                AppChoiceChip(text: 'EU 34',selected: true,onSelected: (value){},),
                AppChoiceChip(text: 'EU 36',selected: false,onSelected: (value){},),
                AppChoiceChip(text: 'EU 37',selected: true,onSelected: (value){},),
                AppChoiceChip(text: 'EU 38',selected: false,onSelected: (value){},),
              ],
            )
          ],
        )
      ],
    );
  }
}


