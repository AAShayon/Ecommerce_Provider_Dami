import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/common/widgets/appbar/tabbar.dart';
import 'package:test_commerce/common/widgets/containers/search_container.dart';
import 'package:test_commerce/common/widgets/brands/brand_card.dart';
import 'package:test_commerce/common/widgets/layouts/grid_layouts.dart';
import 'package:test_commerce/common/widgets/products/products_cart/cart_menu.dart';
import 'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/features/shop/screen/store/widget/category_tab.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppCustomAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: AppHelperFunctions.isDarkMode(context)
                      ? AppColors.black
                      : AppColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(AppSizes.defaultSpace),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        const SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        const CustomSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBtwSections,
                        ),
                        AppSectionHeading(
                            title: 'Featured Brands',
                            showActionButton: true,
                            onPressed: () {}),
                        const SizedBox(
                          height: AppSizes.spaceBtwItems / 1.5,
                        ),
                        AppGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const AppBrandCard(showBorder: false,);
                            })
                      ],
                    ),
                  ),
                  bottom: const CustomTabBar(tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ]),
                )
              ];
            },
            body: const TabBarView(children: [
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
              AppCategoryTab(),
            ])),
      ),
    );
  }
}




