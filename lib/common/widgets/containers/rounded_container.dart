import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class AppRoundedContainer extends StatelessWidget {
  const AppRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius=AppSizes.cardRadiusLg,
      this.child,
      this.showBorder=false,
      this.borderColor=AppColors.borderPrimary,
      this.backGroundColor=AppColors.white,
      this.padding,
      this.margin});

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backGroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
