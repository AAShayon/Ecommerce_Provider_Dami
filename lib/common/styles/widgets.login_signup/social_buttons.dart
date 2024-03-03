import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class SSocialButtons extends StatelessWidget {
  const SSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: AppSizes.iconXLg,
                height: AppSizes.iconXLg,
                image: AssetImage(AppImages.google),
              ),
            )),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: AppSizes.iconXLg,
                height: AppSizes.iconXLg,
                image: AssetImage(AppImages.facebook),
              ),
            )),
      ],
    );
  }
}
