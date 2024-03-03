import'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class AppProductBillingAmount extends StatelessWidget {
  const AppProductBillingAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems /2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems /2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),

      ],
    );
  }
}
