import'package:test_commerce/common/widgets/brands/brand_show_case.dart';
import 'package:test_commerce/common/widgets/layouts/grid_layouts.dart';
import 'package:test_commerce/common/widgets/products/products_cards/products_card_vertical.dart';
import 'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              const BrandShowCase(images: [AppImages.products20,AppImages.products19,AppImages.products20],),
              const BrandShowCase(images: [AppImages.products20,AppImages.products19,AppImages.products20],),
              const BrandShowCase(images: [AppImages.products20,AppImages.products19,AppImages.products20],),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              AppSectionHeading(title: 'You Might Like',showActionButton: true,onPressed: (){},),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              AppGridLayout(itemCount: 4, itemBuilder: (_,index)=>const VerticalProductCard()),
              const SizedBox(height: AppSizes.spaceBtwSections,),
            ],
          ),
        ),
      ],
    );
  }
}
