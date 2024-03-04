import 'package:provider/provider.dart';
import'package:test_commerce/provider/onboardig_provider.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/device/device_utility.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
///----
// class OnBoardingNextButton extends StatelessWidget {
//   const OnBoardingNextButton({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final dark=AppHelperFunctions.isDarkMode(context);
//     return Positioned(
//         right: AppSizes.defaultSpace,
//         bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
//         child: ElevatedButton(
//             onPressed: () async =>OnBoardingController.instance.nextPage(),
//             style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor:dark ? AppColors.primary : Colors.black),
//             child: const Icon(Iconsax.arrow_right_3)));
//   }
// }
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () async =>
            Provider.of<OnBoardingProvider>(context, listen: false).nextPage(context),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? AppColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}