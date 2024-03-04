import 'package:test_commerce/bottom_navigation.dart';
import 'package:test_commerce/common/widgets/appbar/appbar.dart';
import 'package:test_commerce/common/widgets/containers/rounded_container.dart';
import 'package:test_commerce/common/widgets/products/products_cart/coupons.dart';
import 'package:test_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:test_commerce/features/shop/screen/cart/widgets/cart_items.dart';
import 'package:test_commerce/features/shop/screen/checkout/widget/billing_address_section.dart';
import 'package:test_commerce/features/shop/screen/checkout/widget/billing_amount_section.dart';
import 'package:test_commerce/features/shop/screen/checkout/widget/billing_payment_section.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppCustomAppBar(
          showBackArrow: true,
          title: Text(
            'Order Review',
            style: Theme.of(context).textTheme.headlineMedium,
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            const AppCartItems(
              showAddRemoveButtons: false,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            const AppCouponCode(),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            AppRoundedContainer(
              padding: const EdgeInsets.all(AppSizes.md),
              showBorder: true,
              backGroundColor: dark ? AppColors.black : AppColors.white,
              child: const Column(
                children: [
                  AppProductBillingAmount(),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  Divider(),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  AppProductBillingPayment(),
                  SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  AppProductBillingAddress(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => AppHelperFunctions.navigateToScreen(
                context,
                SuccessScreen(
                    image: AppImages.successFullPaymentIcon,
                    title: 'Payment Success',
                    subTitle: 'Your Item will be shipped soon',
                    onPressed: ()=>AppHelperFunctions.navigateToScreenAndRemoveUntil(context, const NavigationMenu()))),

            //     onPressed: ()=>Get.to(()=> SuccessScreen(
            //   image: AppImages.successFullPaymentIcon,title: 'Payment Success',
            //   subTitle: 'Your Item will be shipped soon',
            //   onPressed: ()=>Get.offAll(()=>const NavigationMenu()),
            // )),
            child: const Text('Confirm')),
      ),
    );
  }
}
