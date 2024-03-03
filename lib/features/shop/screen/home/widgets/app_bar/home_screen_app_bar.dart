import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/common/widgets/products/products_cart/cart_menu.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(AppTexts.homeAppbartitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.grey),),
          Text(AppTexts.homeAppbarSubtitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () {  }, iconColor: AppColors.white,),
      ],
    );
  }
}