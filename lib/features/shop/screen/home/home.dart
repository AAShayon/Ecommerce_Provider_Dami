import'package:test_commerce/common/widgets/containers/app_primary_header_container.dart';
import 'package:test_commerce/common/widgets/containers/search_container.dart';
import 'package:test_commerce/common/widgets/layouts/grid_layouts.dart';
import 'package:test_commerce/common/widgets/products/products_cards/products_card_vertical.dart';
import 'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/features/shop/screen/home/widgets/app_bar/home_screen_app_bar.dart';
import 'package:test_commerce/features/shop/screen/home/widgets/categories/home_categories.dart';
import 'package:test_commerce/features/shop/screen/home/widgets/slider/home_sliders.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppHeaderContainer(
              child: Column(
                children: [
                  HomePageAppBar(),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  CustomSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        AppSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        HomeCategories()
                      ],
                    ),
                  ),
                   SizedBox(height :AppSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: Column(
                  children: [
                    const AppHomeSlider(
                      banners: [AppImages.promoBanner1, AppImages.promoBanner2, AppImages.promoBanner3],
                    ),
                   const SizedBox(height: AppSizes.spaceBtwSections,),
                   AppSectionHeading(title: 'Popular Products',onPressed: (){},),
                    const SizedBox(height: AppSizes.spaceBtwItems,),
                    AppGridLayout(itemCount: 6, itemBuilder: (_,index)=> const VerticalProductCard()),
                  ],
                )),


          ],
        ),
      ),
    );
  }
}
