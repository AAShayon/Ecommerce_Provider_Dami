import'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
class STermsndCon extends StatelessWidget {
  const STermsndCon({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(height:24,width:24,child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(width: AppSizes.spaceBtwItems,),
        Text.rich(TextSpan(children: [
          TextSpan(text: '${AppTexts.iAgreeTo }  ',style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: '${AppTexts.privacyPolicy }  ',style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? AppColors.white : AppColors.primary,
            decoration: TextDecoration.underline,
            decorationColor: dark ? AppColors.white : AppColors.primary,
          )),
          TextSpan(text: '${AppTexts.and} ',style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: AppTexts.termOfuse,style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? AppColors.white : AppColors.primary,
            decoration: TextDecoration.underline,
            decorationColor: dark ? AppColors.white : AppColors.primary,
          )),


        ]))
      ],
    );
  }
}