import'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class AppProductBillingAddress extends StatelessWidget {
  const AppProductBillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSectionHeading(title: 'Shipping Address',buttonTitle: 'Change',showActionButton: true,onPressed: (){},),
        Text('New Street ,Bangalore ,5656 india',style: Theme.of(context).textTheme.bodyLarge,),
         const SizedBox(height: AppSizes.spaceBtwItems/2,),
         Row(
          children: [
             const Icon(Icons.phone ,color: Colors.grey,size: 16,),
            const SizedBox(width: AppSizes.spaceBtwItems,),
            Text('+88-017-52366628',style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history ,color: Colors.grey,size: 16,),
            const SizedBox(width: AppSizes.spaceBtwItems,),
            Expanded(child: Text('South sea park ,chennai ',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,))
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems/2,)
      ],
    );
  }
}
