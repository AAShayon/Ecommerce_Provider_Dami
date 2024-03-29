import'package:carousel_slider/carousel_slider.dart';
import 'package:test_commerce/common/widgets/containers/circular_containers.dart';
import 'package:test_commerce/common/widgets/images/rounded_images.dart';
import 'package:test_commerce/provider/carrousle_homepage_provider.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
//
//
// class AppHomeSlider extends StatelessWidget {
//   const AppHomeSlider({
//     super.key, required this.banners,
//   });
//   final List<String> banners;
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(HomeController());
//     return Column(
//       children: [
//         CarouselSlider(
//             items: banners.map((url) =>  AppRoundImage(imageUrl: url)).toList(),
//             options: CarouselOptions(
//                 viewportFraction: 1,
//                 onPageChanged: (index, _) =>
//                     controller.updatePageIndicator(index))),
//         const SizedBox(
//           height: AppSizes.spaceBtwItems,
//         ),
//         Center(
//           child: Obx(
//             () => Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 for (int i = 0; i < banners.length; i++)
//                   AppCircularContainer(
//                     width: 20,
//                     height: 4,
//                     backgroundColor: controller.carouselCurrentIndex.value == i
//                         ? AppColors.primary
//                         : AppColors.grey,
//                     margin: const EdgeInsets.only(right: 10),
//                   ),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
import 'package:provider/provider.dart';

class AppHomeSlider extends StatelessWidget {
  const AppHomeSlider({
    Key? key,
    required this.banners,
  }) : super(key: key);

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<CarouselHomeProvider>(context);
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => AppRoundImage(imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => homeProvider.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                AppCircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: homeProvider.carouselCurrentIndex == i
                      ? AppColors.primary
                      : AppColors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        )
      ],
    );
  }
}
