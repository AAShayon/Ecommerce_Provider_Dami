// import'package:test_commerce/features/authentication/controllers/onboardig_controller.dart';
// import 'package:test_commerce/utils/constant/colors.dart';
// import 'package:test_commerce/utils/constant/sizes.dart';
// import 'package:test_commerce/utils/device/device_utility.dart';
// import 'package:test_commerce/utils/helpers/helper_function.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
//
// class OnBoardingDotNavigation extends StatelessWidget {
//   const OnBoardingDotNavigation({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final controller=OnBoardingController.instance;
//     final dark=AppHelperFunctions.isDarkMode(context);
//     return Positioned(
//       bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
//       left: AppSizes.defaultSpace,
//       child: SmoothPageIndicator(controller:controller.pageController,
//         count: 3,onDotClicked: controller.dotNavigationClick,
//         effect: ExpandingDotsEffect(activeDotColor:dark ? AppColors.light : AppColors.dark,dotHeight: 6 ),
//       ),
//
//
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_commerce/features/authentication/controllers/onboardig_controller.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/device/device_utility.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<OnBoardingProvider>(context);
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? AppColors.light : AppColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
