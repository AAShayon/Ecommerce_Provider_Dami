import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/common/widgets/icons/circular_icons.dart';
import 'package:test_commerce/common/widgets/layouts/grid_layouts.dart';
import 'package:test_commerce/common/widgets/products/products_cards/products_card_vertical.dart';
import 'package:test_commerce/features/shop/screen/home/home.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        title: Text('WishList',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          AppCircularIcon(icon: Iconsax.add,onPressed:(){AppHelperFunctions.navigateToScreen(context, const HomeScreen());} ,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AppGridLayout(itemCount: 60, itemBuilder: (_,index)=>const VerticalProductCard())
            ],
          ),
        ),
      ),
    );
  }
}
