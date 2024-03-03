import 'package:test_commerce/common/widgets/brands/brand_card.dart';
import 'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';


class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backGroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        children: [
          const AppBrandCard(showBorder: false),
          const SizedBox(height: AppSizes.spaceBtwItems,),
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image , context){
    return Expanded(child: AppRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(right: AppSizes.sm),
      backGroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.darkerGrey : AppColors.light,
      child: Image(fit: BoxFit.contain,image: AssetImage(image)),
    ));
  }
}