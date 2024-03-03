import'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppProductBillingPayment extends StatelessWidget {
  const AppProductBillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        AppSectionHeading(title: 'Payment Method',buttonTitle: 'Change',showActionButton: true,onPressed: (){},),
        const SizedBox(height: AppSizes.spaceBtwItems/2,),
        Row(
          children: [
            AppRoundedContainer(
              width: 60,height: 35,backGroundColor:dark ? AppColors.light : AppColors.white ,
              padding: const EdgeInsets.all(AppSizes.sm),
              child: const Image(image: AssetImage(AppImages.paypal),fit: BoxFit.contain,),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems/2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
