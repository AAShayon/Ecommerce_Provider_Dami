import'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:test_commerce/common/widgets/products/products_cart/add_remove_button.dart';
import 'package:test_commerce/common/widgets/products/products_cart/cart_item.dart';
import 'package:test_commerce/common/widgets/texts/products_price_text.dart';

class AppCartItems extends StatelessWidget {
  const AppCartItems({super.key,  this.showAddRemoveButtons=true});
final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (_, index) =>  Column(
          children: [
            const AppCartItem(),
            if(showAddRemoveButtons) const SizedBox(height: AppSizes.spaceBtwItems,),
            if(showAddRemoveButtons)  const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width:70),
                    AppProductQuantityAddRemoveButton(),
                  ],
                ),

                AppProductPrice(price: '256'),
              ],
            )
          ],
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        itemCount: 2);
  }
}
