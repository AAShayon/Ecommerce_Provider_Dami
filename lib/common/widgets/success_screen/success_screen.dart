import 'package:test_commerce/common/styles/spacing_styles.dart';
import 'package:test_commerce/utils/constant/sizes.dart';
import 'package:test_commerce/utils/constant/text_strings.dart';
import 'package:test_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';


class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image,title,subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingwithAppBarHeight * 2,
          child: Column(
            children: [
              Image(image: AssetImage(image),width:AppHelperFunctions.screenWidth()*0.6 ,),
              const SizedBox(height: AppSizes.spaceBtwSections,),
              ///Title and Subtitle
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: AppSizes.spaceBtwItems,),
              Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: AppSizes.spaceBtwSections,),
              ///Button
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed:onPressed,child: const Text(AppTexts.Scontinue) ),),
            ],
          ),
        ),
      ),
    );
  }
}
