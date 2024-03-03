import'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
class AppCouponCode extends StatelessWidget {
  const AppCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark=AppHelperFunctions.isDarkMode(context);
    return AppRoundedContainer(showBorder: true,
      backGroundColor: dark ? AppColors.dark : AppColors.white,
      padding:const EdgeInsets.only(top: AppSizes.sm,bottom: AppSizes.sm,right: AppSizes.sm,left: AppSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a Promo Code ? Enter here',
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none
              ),
            ),

          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? AppColors.white.withOpacity(.5):
                  AppColors.dark.withOpacity(.5),
                  backgroundColor: Colors.grey.withOpacity(.2),
                  side: BorderSide(color: Colors.grey.withOpacity(.1))
              ), child: const Text('Apply'),

            ),
          )
        ],
      ),
    );
  }
}