import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:test_commerce/bottom_navigation.dart';
import 'package:test_commerce/provider/auth_provider.dart';
import 'package:test_commerce/utils/constant/colors.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';

class SSocialButtons extends StatelessWidget {
  const SSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthenticationProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              onPressed: () async {
                User? user = await authProvider.signInWithGoogle();

                if (user != null) {
                  AppHelperFunctions.navigateToScreen(context, const NavigationMenu());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Google Sign-In failed')),
                  );
                }
              },
              icon: const Image(
                width: AppSizes.iconXLg,
                height: AppSizes.iconXLg,
                image: AssetImage(AppImages.google),
              ),
            )),
        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: AppSizes.iconXLg,
                height: AppSizes.iconXLg,
                image: AssetImage(AppImages.facebook),
              ),
            )),
      ],
    );
  }
}
