import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/features/shop/screen/cart/widgets/cart_items.dart';
import 'package:test_commerce/features/shop/screen/checkout/checkout.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium,)),
      body: const Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child:AppCartItems()

      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=>Get.to(()=>const CheckoutScreen()),child: const Text('Checkout \$256')),
      ) ,
    );
  }
}


