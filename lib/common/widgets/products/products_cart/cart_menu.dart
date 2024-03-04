import'package:test_commerce/features/shop/screen/cart/cart.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
    this.counterBgColor,
    this.counterTextColor,
  });

  final Color? iconColor, counterBgColor, counterTextColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            // onPressed: ()=>Get.to(()=>const CartScreen())
        onPressed: ()=>AppHelperFunctions.navigateToScreen(context, const CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? (dark ? AppColors.white :AppColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color:counterTextColor ??(dark ? AppColors.dark :AppColors.light) , fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}
