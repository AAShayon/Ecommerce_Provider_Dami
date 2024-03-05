import'package:test_commerce/common/styles/spacing_styles.dart';
import 'package:test_commerce/common/styles/widgets.login_signup/form_divider.dart';
import 'package:test_commerce/common/styles/widgets.login_signup/social_buttons.dart';
import 'package:test_commerce/features/authentication/screens/login/widgets/login_Header.dart';
import 'package:test_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';
// String capitalize(String input) {
//   if (input.isEmpty) return input;
//   return input[0].toUpperCase() + input.substring(1).toLowerCase();
// }
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SSpacingStyle.paddingwithAppBarHeight,
        child: Column(
          children: [
            ///----headings
            ///logo ,Title,Sub title
          const  SLoginHeader(),
            ///--form
          const  SLoginForm(),

            ///ADDing Divider

            SFormDivider(dividerText:
            AppTexts.orSignInWith.toUpperCase()),
            // capitalize(AppTexts.orSignInWith)),

            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            ///Footer
            const SSocialButtons(),
          ],
        ),
      ),
    );
  }
}









