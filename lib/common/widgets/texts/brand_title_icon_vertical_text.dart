import'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/enums.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
   this.maxLines=1,
    this.textColor,
    required this.title,
    this.iconColor=AppColors.primary,
    this.textAlign=TextAlign.center,
    this.brandTextSize=TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BrandTitleText(title: title)
        ),
        const Icon(
          Iconsax.verify5,
          color: AppColors.primary,
          size: AppSizes.iconXs,
        )
      ],
    );
  }
}
