// import 'package:test_commerce/features/personalization/screens/settings/settings.dart';
// import 'package:test_commerce/features/shop/screen/home/home.dart';
// import 'package:test_commerce/features/shop/screen/store/store.dart';
// import 'package:test_commerce/features/shop/screen/wishlist/wishlist.dart';
// import 'package:test_commerce/utils/constant/colors.dart';
// import 'package:test_commerce/utils/helpers/helper_function.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// class NavigationMenu extends StatelessWidget {
//   const NavigationMenu({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavigationController());
//     final dark = AppHelperFunctions.isDarkMode(context);
//     return Scaffold(
//       bottomNavigationBar: Obx(
//         () => NavigationBar(
//           height: 60,
//           elevation: 0,
//           selectedIndex: controller.selectedIndex.value,
//           onDestinationSelected: (index) =>
//               controller.selectedIndex.value = index,
//           backgroundColor: dark ? AppColors.black : AppColors.white,
//           indicatorColor: dark
//               ? AppColors.white.withOpacity(.1)
//               : AppColors.black.withOpacity(.1),
//           destinations: const [
//             NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
//             NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
//             NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
//             NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
//           ],
//         ),
//       ),
//       body: Obx(() => controller.screens[controller.selectedIndex.value]),
//     );
//   }
// }
//
// class NavigationController extends GetxController {
//   final Rx<int> selectedIndex = 0.obs;
//
//   final screens = [
//     const HomeScreen(),
//     const StoreScreen(),
//     const WishlistScreen(),
//     const SettingsScreen(),
//   ];
// }

///------
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_commerce/provider/landing_page_provider.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LandingPageProvider>(context);
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Consumer<LandingPageProvider>(
        builder: (context, controller, _) => NavigationBar(
          height: 60,
          elevation: 0,
          selectedIndex: controller.selectedIndex,
          onDestinationSelected: (index) =>
              controller.setSelectedIndex(index),
          backgroundColor: dark ? AppColors.black : AppColors.white,
          indicatorColor: dark
              ? AppColors.white.withOpacity(.1)
              : AppColors.black.withOpacity(.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: IndexedStack(
        index: controller.selectedIndex,
        children: controller.screens,
      ),
    );
  }
}


