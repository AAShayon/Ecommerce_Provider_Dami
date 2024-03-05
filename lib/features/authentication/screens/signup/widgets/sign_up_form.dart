import 'package:provider/provider.dart';
import'package:test_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:test_commerce/features/authentication/screens/signup/widgets/terms_condition.dart';
import 'package:test_commerce/provider/auth_provider.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';

class SSIgnupForm extends StatelessWidget {
  const SSIgnupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    // Define TextControllers for form fields
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final passwordController = TextEditingController();
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false ,//
                  controller: firstNameController,
                  decoration: const InputDecoration(
                      labelText: AppTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false ,controller: lastNameController,
                  decoration: const InputDecoration(
                      labelText: AppTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height:AppSizes.spaceBtwInputFields,),
          ///User Name
          TextFormField(
            expands: false,
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: AppTexts.username,prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height:AppSizes.spaceBtwInputFields ,),
          ///Email
          TextFormField(
            expands: false,controller: emailController,
            decoration: const InputDecoration(
              labelText: AppTexts.email ,prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height:AppSizes.spaceBtwInputFields ,),
          ///phone
          TextFormField(
            expands: false,controller: phoneController,
            decoration: const InputDecoration(
              labelText: AppTexts.phoneNo ,prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height:AppSizes.spaceBtwInputFields ,),
          /// password
          TextFormField(
            expands: false,controller: passwordController,
            decoration: const InputDecoration(
              labelText: AppTexts.password ,prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections,),
          ///Cherckbox for terms and condition
          const STermsndCon(),
          const SizedBox(height: AppSizes.spaceBtwSections,),
          ///Sign up Button
          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: () async {
              // Get.to(()=> const VerifyEmailScreen())
              final user = await authProvider.signUpWithEmailAndPassword(
                firstNameController.text,
                lastNameController.text,
                usernameController.text,
                emailController.text,
                phoneController.text,
                passwordController.text,
              );
              AppHelperFunctions.navigateToScreen(context, const VerifyEmailScreen())
              
              ;
            },child: const Text(AppTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}

