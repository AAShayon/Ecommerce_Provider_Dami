import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:test_commerce/features/shop/screen/product_reviews/widgets/product_overall_rating_progress_indicator.dart';
import 'package:test_commerce/features/shop/screen/product_reviews/widgets/product_user_review_card.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const AppCustomAppBar(
          title: Text('Reviews & Ratings'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Rating and reviews are verified and are form people who use the same type of device  assaas assasasasasasasaassa saassasa sasaassa'),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              const AppOverAllProductRating(),
              const AppRatingBarIndicator(rating: 3.5,),
              Text('12,611',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: AppSizes.spaceBtwSections,),
              const AppUserReviewCard(),
              const AppUserReviewCard(),
              const AppUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


