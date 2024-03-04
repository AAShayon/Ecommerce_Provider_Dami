// import'package:test_commerce/features/authentication/controllers/onboardig_provider.dart';
// import 'package:test_commerce/features/authentication/screens/onBoarding/widgets/onboarding_next_Button.dart';
// import 'package:test_commerce/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
// import 'package:test_commerce/utils/constant/image_strings.dart';
// import 'package:test_commerce/utils/constant/text_strings.dart';
// import 'package:flutter/material.dart';
// import 'widgets/onboarding_dot_navigation.dart';
// import 'widgets/onboarding_page.dart';
//
// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           ///Horizontal Scrollable
//           PageView(
//             controller: controller.pageController,
//             onPageChanged: controller.updatePageIndicator,
//             children: const [
//               OnBoardingPage(
//                   image: AppImages.onBoardingImage1,
//                   title: AppTexts.onBoardingTitle1,
//                   subTitle: AppTexts.onBoardingSubTitle1),
//               OnBoardingPage(
//                   image: AppImages.onBoardingImage2,
//                   title: AppTexts.onBoardingTitle2,
//                   subTitle: AppTexts.onBoardingSubTitle2),
//               OnBoardingPage(
//                   image: AppImages.onBoardingImage3,
//                   title: AppTexts.onBoardingTitle3,
//                   subTitle: AppTexts.onBoardingSubTitle3),
//             ],
//           ),
//
//           ///skip button
//           const OnboardingSkip(),
//
//           ///Dot Nav.. SmoothPageIndicator
//          const OnBoardingDotNavigation(),
//           ///Circular button
//           const OnBoardingNextButton(),
//         ],
//       ),
//     );
//   }
// }
//
///---end of getx
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_commerce/provider/onboardig_provider.dart';
import 'package:test_commerce/features/authentication/screens/onBoarding/widgets/onboarding_next_Button.dart';
import 'package:test_commerce/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnBoardingProvider(),
      child: Scaffold(
        body: Consumer<OnBoardingProvider>(
          builder: (context, provider, _) {
            return Stack(
              children: [
                ///Horizontal Scrollable
                PageView(
                  controller: provider.pageController,
                  onPageChanged: provider.updatePageIndicator,
                  children: const [
                    OnBoardingPage(
                      image: AppImages.onBoardingImage1,
                      title: AppTexts.onBoardingTitle1,
                      subTitle: AppTexts.onBoardingSubTitle1,
                    ),
                    OnBoardingPage(
                      image: AppImages.onBoardingImage2,
                      title: AppTexts.onBoardingTitle2,
                      subTitle: AppTexts.onBoardingSubTitle2,
                    ),
                    OnBoardingPage(
                      image: AppImages.onBoardingImage3,
                      title: AppTexts.onBoardingTitle3,
                      subTitle: AppTexts.onBoardingSubTitle3,
                    ),
                  ],
                ),

                ///skip button
                const OnboardingSkip(),

                ///Dot Nav.. SmoothPageIndicator
                const OnBoardingDotNavigation(),

                ///Circular button
                const OnBoardingNextButton(),
              ],
            );
          },
        ),
      ),
    );
  }
}



