import'package:test_commerce/common/styles/widgets.login_signup/form_divider.dart';
import 'package:test_commerce/common/styles/widgets.login_signup/social_buttons.dart';
import 'package:test_commerce/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark= SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:const  EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(
                AppTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              ///Form
              const SSIgnupForm(),
              const SizedBox(height: AppSizes.spaceBtwSections,),
              const SFormDivider(dividerText: AppTexts.orSignUpWith,),
              const SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


