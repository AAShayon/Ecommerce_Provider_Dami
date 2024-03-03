import'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=>Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child:Column(
              children: [
                Image(image: const AssetImage(AppImages.deliveredEmailIllustration),width:AppHelperFunctions.screenWidth()*0.6 ,),
                const SizedBox(height: AppSizes.spaceBtwSections,),
                ///Title and Subtitle
                Text(AppTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: AppSizes.spaceBtwItems,),
                Text(AppTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                const SizedBox(height: AppSizes.spaceBtwSections,),
                ///Button
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed:(){},child: const Text(AppTexts.done) ),),
                const SizedBox(height: AppSizes.spaceBtwItems,),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed:(){},child: const Text(AppTexts.resendEmail) ),),
              ],
            ) ),
      ),
    );
  }
}
