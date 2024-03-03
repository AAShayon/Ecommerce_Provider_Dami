import 'package:test_commerce/utils/constant/colors.dart';
import 'package:flutter/material.dart';
class AppShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: AppColors.darkerGrey.withOpacity(.1),
    blurRadius: 50,
    spreadRadius: 2,
    offset:const  Offset(0, 2)
  );

  static final horizontalProductShadow =BoxShadow(
    color: AppColors.darkerGrey.withOpacity(.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

}