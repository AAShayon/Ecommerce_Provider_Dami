import 'package:provider/provider.dart';
import'package:test_commerce/features/authentication/controllers/onboardig_controller.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
// class OnboardingSkip extends StatelessWidget {
//   const OnboardingSkip({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: AppDeviceUtils.getAppBarHeight(),
//       right: AppSizes.defaultSpace,
//       child: TextButton(onPressed: () =>OnBoardingController.instance.skipPage(), child: const Text("skip"))
//     );
//   }
// }
class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardingProvider = Provider.of<OnBoardingProvider>(context, listen: false);
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          onBoardingProvider.setContext(context);
          onBoardingProvider.skipPage();
        }
            ,
        child: const Text("Skip"),
      ),
    );
  }
}
