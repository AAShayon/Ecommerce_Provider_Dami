import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/cupertino.dart';
class SSpacingStyle{
  static const EdgeInsetsGeometry paddingwithAppBarHeight=EdgeInsets.only(
    top: AppSizes.appBarHeight,
    right: AppSizes.defaultSpace,
    left: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
  );
}