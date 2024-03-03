import'package:test_commerce/bottom_navigation.dart';
import 'package:test_commerce/features/authentication/screens/password_config/forget_password.dart';
import 'package:test_commerce/features/authentication/screens/signup/signup.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwInputFields,
            ),

            ///Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: AppTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),

            ///Remember me nad Forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(AppTexts.rememberMe),
                  ],
                ),

                ///Forget Password
                TextButton(
                  onPressed: (){
                    const ForgetPassword();
                    AppHelperFunctions.navigateToScreen(context, const ForgetPassword());
                  },
                  child: const Text(AppTexts.forgetPassword),
                )
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            ///Sign in Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                          AppHelperFunctions.navigateToScreen(context,const NavigationMenu());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: dark ? Colors.orangeAccent : Colors.blueAccent),
                    child: const Text(
                      AppTexts.signIn,
                    ))),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            ///Create Account Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      AppHelperFunctions.navigateToScreen(context, const SignupScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: dark ? Colors.orangeAccent : Colors.blueAccent),
                    child: const Text(AppTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
