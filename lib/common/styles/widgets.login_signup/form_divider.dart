import 'package:test_commerce/utils/constant/colors.dart';
import'package:test_commerce/utils/helpers/helper_function.dart';
import'package:flutter/material.dart';
class SFormDivider extends StatelessWidget {
  const SFormDivider({
    super.key,
    required this.dividerText
  });
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? AppColors.darkGrey : AppColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(
            child: Divider(
                color: dark ? AppColors.darkGrey : AppColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}