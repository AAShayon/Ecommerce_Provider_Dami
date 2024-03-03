import'package:test_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:test_commerce/features/authentication/screens/login/login.dart';
import 'package:test_commerce/utils/constant/image_strings.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: ()=>Get.offAll(()=>const LoginScreen()), icon:const Icon(CupertinoIcons.clear))],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding:const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(image: const AssetImage(AppImages.deliveredEmailIllustration),width:AppHelperFunctions.screenWidth()*0.6 ,),
            const SizedBox(height: AppSizes.spaceBtwSections,),
            ///Title and Subtitle
              Text(AppTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              Text('support@sstore.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              Text(AppTexts.confirmEmailSubtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: AppSizes.spaceBtwSections,),
              ///Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed:()=>Get.to(()=> SuccessScreen(
                image: AppImages.staticSuccessIllustration ,
                title: AppTexts.yourAccountCreatedtitle ,
                subTitle:AppTexts.yourAccountCreatedSubtitle ,
                onPressed: ()=>Get.to(()=>const LoginScreen()),
              )),child: const Text(AppTexts.Scontinue) ),),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: const Text(AppTexts.resendEmail),),)
            ],
          ),
        ),
      ),
    );
  }
}
