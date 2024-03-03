import 'package:test_commerce/features/shop/screen/product_reviews/widgets/product_progress_indicator_rating.dart';
import 'package:flutter/material.dart';
class AppOverAllProductRating extends StatelessWidget {
  const AppOverAllProductRating({
    super.key,  this.text='4.8',
  });
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,child: Text(text!,style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              AppRatingProgressIndicator(text: '5',value: 1,),
              AppRatingProgressIndicator(text: '4',value: .85,),
              AppRatingProgressIndicator(text: '3',value: .65,),
              AppRatingProgressIndicator(text: '2',value: .45,),
              AppRatingProgressIndicator(text: '1',value: .25,),
            ],
          ),
        )

      ],
    );
  }
}