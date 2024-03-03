import'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key,
    this.widht,
    this.height,
    this.size=AppSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? widht, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,height: height,
      decoration: BoxDecoration(
        color:backgroundColor !=null ?
        backgroundColor! :
        AppHelperFunctions.isDarkMode(context)
            ? AppColors.black.withOpacity(.9)
            : AppColors.white.withOpacity(.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon,color: color,size: size,)),
    );
  }
}
