import'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/common/widgets/containers/app_primary_header_container.dart';
import 'package:test_commerce/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:test_commerce/common/widgets/list_tile/user_profile_tile.dart';
import 'package:test_commerce/common/widgets/texts/section_heading.dart';
import 'package:test_commerce/features/personalization/screens/address/address.dart';
import 'package:test_commerce/features/personalization/screens/profile/profile.dart';
import 'package:test_commerce/features/shop/screen/cart/cart.dart';
import 'package:test_commerce/features/shop/screen/order/order.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppHeaderContainer(
                child: Column(
              children: [
                AppCustomAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: AppColors.white),
                  ),
                ),
              UserProfileTile(onPressed:()=> Get.to(()=>const ProfileScreen())),
                const SizedBox(height: AppSizes.spaceBtwSections),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const AppSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  SettingsMenuTile(title: 'Address', subTitle: 'Set Shopping delivery address', icon: Iconsax.safe_home,onTap: ()=>Get.to(()=>const UserAddressScreen()),),
                  SettingsMenuTile(title: 'My Cart', subTitle: 'Add ,remove products and move to checkout', icon: Iconsax.shopping_cart,onTap:()=>Get.to(()=>const CartScreen()),),
                  SettingsMenuTile(title: 'My Order', subTitle: 'In progress and Completed Orders', icon: Iconsax.bag_tick,onTap: ()=>Get.to(()=>const ProductOrderScreen()),),
                  SettingsMenuTile(title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', icon: Iconsax.bank,onTap: (){},),
                  SettingsMenuTile(title: 'My Coupons', subTitle: 'List of all the discounted coupons', icon: Iconsax.discount_shape,onTap: (){},),
                  SettingsMenuTile(title: 'Notifications', subTitle: 'Set any kind of notification message', icon: Iconsax.notification,onTap: (){},),
                  SettingsMenuTile(title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts', icon: Iconsax.security_card,onTap: (){},),

                  const SizedBox(height: AppSizes.spaceBtwSections,),
                  const AppSectionHeading(title: 'App Settings',showActionButton: false,),
                  const SizedBox(height: AppSizes.spaceBtwItems,),
                  SettingsMenuTile(title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase', icon: Iconsax.document_upload,onTap: (){},),
                  SettingsMenuTile(title: 'Location', subTitle: 'Set recommendation based on Location', icon: Iconsax.location,
                  trailing:Switch(value: true,onChanged: (value){},) ,
                  ),
                  SettingsMenuTile(title: 'Safe Mode', subTitle: 'Search result is safe for all ages', icon: Iconsax.security_user, trailing: Switch(value: false, onChanged: (value){}),),
                  SettingsMenuTile(title: 'HD Image ', subTitle: 'Image Quality', icon: Iconsax.image, trailing: Switch(value: false, onChanged: (value){}),),

const SizedBox(height: AppSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Log Out')),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections * 2.5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
