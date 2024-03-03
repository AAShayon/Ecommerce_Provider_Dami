import'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    super.key,
    this.fit=BoxFit.cover,
    required this.image,
    this.isNetworkImage=false,
    this.overlayColor,
    this.backgroundColor,
    this.width=56,
    this.height=56,
    this.padding=AppSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color:backgroundColor?? (AppHelperFunctions.isDarkMode(context)
            ? AppColors.black
            : AppColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image:isNetworkImage? NetworkImage(image): AssetImage(image) as ImageProvider,
        color:overlayColor
            // SHelperFunctions.isDarkMode(context) ? SColors.white : SColors.dark,
      ),
    );
  }
}
