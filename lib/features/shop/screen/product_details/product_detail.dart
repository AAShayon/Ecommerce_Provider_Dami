import'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/features/shop/screen/checkout/checkout.dart';
import 'package:test_commerce/features/shop/screen/product_details/widget/product_attributes.dart';
import 'package:test_commerce/features/shop/screen/product_details/widget/product_bottom_add_to_cart.dart';
import 'package:test_commerce/features/shop/screen/product_details/widget/product_details_image_slider.dart';
import 'package:test_commerce/features/shop/screen/product_details/widget/product_meta_data.dart';
import 'package:test_commerce/features/shop/screen/product_details/widget/rating_share_widget.dart';
import 'package:test_commerce/features/shop/screen/product_reviews/product_reviews.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                right: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const AppRatingAndShare(),
                  const AppProductMetaData(),
                  const AppProductAttributes(),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  ///---checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            AppHelperFunctions.navigateToScreen(context, const CheckoutScreen());
                          },

                          child: const Text('Checkout'))),
                  const AppSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    'This is a Product description for this app .There are more line will be added in the next ,ajahsdgasgdas gjg gjgasdjashdg jahgdasdjasdjasjgasdgasdhgasfdhgafs dhgafsghdfasdashgdfhasgdfhga fdhgafdhgafsdhgasfdhgasfdhgafsdhgafsdhgafsdhgafsdhgfasghdfashgdfashgdfhasgdfhgasfdghasfdhgasfdhgasfdhgasdfghasdfghasf dgh',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: ' less ',
                    moreStyle: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppSectionHeading(
                          title: 'Reviews(199)', showActionButton: false),
                      IconButton(onPressed: (){AppHelperFunctions.navigateToScreen(context, const ProductReviewsScreen());}
                          ,
                          icon: const Icon(Iconsax.arrow_right_3, size: 18,)),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
