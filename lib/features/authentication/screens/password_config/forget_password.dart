import'package:test_commerce/features/authentication/screens/password_config/reset_password.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Headings
        Text(AppTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
       const SizedBox(height: AppSizes.spaceBtwItems,),
        Text(AppTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
       const SizedBox(height: AppSizes.spaceBtwSections * 2 ),
        ///TextField
         TextFormField(
           decoration: const InputDecoration(
             labelText: AppTexts.email,prefixIcon: Icon(Iconsax.direct_right),
           ),
         ),
          const SizedBox(height: AppSizes.spaceBtwSections * 2 ),
        ///Submit button
          SizedBox(width: double.infinity,child: ElevatedButton(
            onPressed: ()=>Get.to(()=>const ResetPassword()),
            child: const Text(AppTexts.submit),
          ),)

        ///Submit Buttons
        ],
      ),
      ),
    );
  }
}
